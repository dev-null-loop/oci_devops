locals {
  missing_project_refs = distinct(concat(
    [
      for _, item in var.connections : item.project_name
      if !contains(keys(var.projects), item.project_name)
    ],
    [
      for _, item in var.repositories : item.project_name
      if !contains(keys(var.projects), item.project_name)
    ],
    [
      for _, item in var.build_pipelines : item.project_name
      if !contains(keys(var.projects), item.project_name)
    ],
    [
      for _, item in var.triggers : item.project_name
      if !contains(keys(var.projects), item.project_name)
    ]
  ))

  missing_connection_refs = distinct(concat(
    flatten([
      for _, repo in var.repositories : (
        try(repo.mirror_repository_config.connection_name, null) != null &&
        !contains(keys(var.connections), repo.mirror_repository_config.connection_name)
      ) ? [repo.mirror_repository_config.connection_name] : []
    ]),
    flatten([
      for _, stage in var.build_pipeline_stages : [
        for src in try(stage.build_source_collection.items, []) : src.connection_name
        if try(src.connection_name, null) != null && !contains(keys(var.connections), src.connection_name)
      ]
    ]),
    [
      for _, trig in var.triggers : trig.connection_name
      if try(trig.connection_name, null) != null && !contains(keys(var.connections), trig.connection_name)
    ]
  ))

  missing_repository_refs = distinct(concat(
    [
      for _, trig in var.triggers : trig.repository_name
      if try(trig.repository_name, null) != null && !contains(keys(var.repositories), trig.repository_name)
    ],
    flatten([
      for _, stage in var.build_pipeline_stages : [
        for src in try(stage.build_source_collection.items, []) : src.repository_name
        if try(src.repository_name, null) != null && !contains(keys(var.repositories), src.repository_name)
      ]
    ])
  ))

  missing_build_pipeline_refs = distinct(concat(
    [
      for _, stage in var.build_pipeline_stages : stage.build_pipeline_name
      if !contains(keys(var.build_pipelines), stage.build_pipeline_name)
    ],
    flatten([
      for _, trig in var.triggers : [
        for action in trig.actions : action.build_pipeline_name
        if !contains(keys(var.build_pipelines), action.build_pipeline_name)
      ]
    ])
  ))

  missing_stage_predecessor_refs = distinct(flatten([
    for _, stage in var.build_pipeline_stages : [
      for pred in stage.predecessors : "${pred.type}:${pred.name}"
      if(
        pred.type == "pipeline" && !contains(keys(var.build_pipelines), pred.name)
        ) || (
        pred.type == "stage" && !contains(keys(var.build_pipeline_stages), pred.name)
      ) || !contains(["pipeline", "stage"], pred.type)
    ]
  ]))

  build_source_collection_resolved = {
    for stage_name, stage in var.build_pipeline_stages : stage_name => (
      try(stage.build_source_collection, null) == null ? null : {
        items = [
          for src in stage.build_source_collection.items : {
            branch          = try(src.branch, null)
            connection_id   = try(src.connection_name, null) == null ? null : module.connection[src.connection_name].id
            connection_type = src.connection_type
            name            = try(src.name, null)
            repository_id   = try(src.repository_name, null) == null ? null : module.repository[src.repository_name].id
            repository_url  = try(src.repository_url, null)
          }
        ]
      }
    )
  }
}

check "project_refs_exist" {
  assert {
    condition     = length(local.missing_project_refs) == 0
    error_message = "Unknown project_name references: ${join(", ", local.missing_project_refs)}"
  }
}

check "connection_refs_exist" {
  assert {
    condition     = length(local.missing_connection_refs) == 0
    error_message = "Unknown connection_name references: ${join(", ", local.missing_connection_refs)}"
  }
}

check "repository_refs_exist" {
  assert {
    condition     = length(local.missing_repository_refs) == 0
    error_message = "Unknown repository_name references: ${join(", ", local.missing_repository_refs)}"
  }
}

check "build_pipeline_refs_exist" {
  assert {
    condition     = length(local.missing_build_pipeline_refs) == 0
    error_message = "Unknown build_pipeline_name references: ${join(", ", local.missing_build_pipeline_refs)}"
  }
}

check "stage_predecessors_valid" {
  assert {
    condition     = length(local.missing_stage_predecessor_refs) == 0
    error_message = "Unknown or invalid predecessor refs: ${join(", ", local.missing_stage_predecessor_refs)}"
  }
}
