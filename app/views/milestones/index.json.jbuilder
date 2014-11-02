json.array!(@milestones) do |milestone|
  json.extract! milestone, :id, :title, :description, :project_id
  json.url milestone_url(milestone, format: :json)
end
