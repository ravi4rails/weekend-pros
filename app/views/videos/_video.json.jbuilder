json.extract! video, :id, :channel_id, :title, :user_id, :created_at, :updated_at
json.url video_url(video, format: :json)
