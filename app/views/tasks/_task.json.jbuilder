json.extract! task, :id, :title, :body, :complete, :created_at, :updated_at
json.url task_url(task, format: :json)
