json.extract! answer, :id, :name, :poll_id, :created_at, :updated_at
json.url poll_answer_url(@poll, answer, format: :json)
