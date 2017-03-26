json.extract! project, :id, :project_name, :project_description_name, :start_date, :end_date, :student_id, :created_at, :updated_at
json.url project_url(project, format: :json)
