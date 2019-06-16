json.extract! project_environment, :id, :project_id, :name, :is_public, :created_at, :updated_at
json.url project_environment_url(project_environment, format: :json)
