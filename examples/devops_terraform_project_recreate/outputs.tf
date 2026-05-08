output "projects" {
  description = "Created DevOps projects keyed by input name."
  value = {
    for k, v in module.project : k => {
      id    = v.id
      name  = var.projects[k].name
      state = v.state
    }
  }
}

output "connections" {
  description = "Created DevOps connections keyed by input name."
  value = {
    for k, v in module.connection : k => {
      id              = v.id
      connection_type = v.connection_type
      display_name    = v.display_name
    }
  }
}

output "repositories" {
  description = "Created DevOps repositories keyed by input name."
  value = {
    for k, v in module.repository : k => {
      id             = v.id
      default_branch = v.default_branch
      http_url       = v.http_url
      ssh_url        = v.ssh_url
    }
  }
}

output "build_pipelines" {
  description = "Created build pipelines keyed by input name."
  value = {
    for k, v in module.build_pipeline : k => {
      id           = v.id
      display_name = try(var.build_pipelines[k].display_name, null)
      state        = v.state
    }
  }
}

output "build_pipeline_stages" {
  description = "Created build pipeline stages keyed by input name."
  value = {
    for k, v in module.build_pipeline_stage : k => {
      id           = v.id
      display_name = try(var.build_pipeline_stages[k].display_name, null)
      state        = v.state
    }
  }
}

output "triggers" {
  description = "Created triggers keyed by input name."
  value = {
    for k, v in module.trigger : k => {
      id             = v.id
      trigger_source = v.trigger_source
      trigger_url    = v.trigger_url
    }
  }
}
