json.extract! result, :id, :poll_id, :user_id, :answer_id, :created_at, :updated_at
json.url result_url(result, format: :json)
