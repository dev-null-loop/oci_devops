# devops_terraform_project_recreate

This root module recreates the observed OCI DevOps project shape discovered in
`eu-frankfurt-1` under the `gfeodorov` compartment:

- one DevOps project
- one `GITHUB_ACCESS_TOKEN` connection
- one mirrored repository
- one build pipeline
- two build stages: `terraform-plan`, `terraform-apply`
- one trigger on `PUSH` to `main`

External prerequisites are not created here:

- an existing ONS topic
- an existing Vault secret containing the GitHub PAT
- the upstream GitHub repository content, including `build_spec_plan.yaml` and
  `build_spec_apply.yaml`

Layout:

- `provider.tf` / `versions.tf`: root provider configuration
- `identity-variables.tf`: OCI auth and `compartment_ids`
- `devops-variables.tf`: map-based DevOps inputs
- `locals.tf`: name resolution and validation checks
- `devops.tf`: child module composition with `for_each`
- child module sources use Git SSH module addresses in the same style as the network root modules, for example `git@github.com:dev-null-loop/oci_devops//project`
- `*.auto.tfvars.example`: environment-specific example values

Usage:

```bash
cp identity.auto.tfvars.example identity.auto.tfvars
cp devops.auto.tfvars.example devops.auto.tfvars
terraform init
terraform plan
```

Note:

- The discovered source project had a failed build run because logging was not
  enabled. Recreating the DevOps resources alone does not fix that service-side
  prerequisite.
