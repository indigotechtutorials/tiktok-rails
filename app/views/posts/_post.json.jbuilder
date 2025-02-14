json.extract! post, :id, :caption, :description, :user_id, :video, :created_at, :updated_at
json.url post_url(post, format: :json)
json.video url_for(post.video)
