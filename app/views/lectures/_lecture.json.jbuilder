json.extract! lecture, :id, :topic_name, :course_id, :created_at, :updated_at
json.url lecture_url(lecture, format: :json)
