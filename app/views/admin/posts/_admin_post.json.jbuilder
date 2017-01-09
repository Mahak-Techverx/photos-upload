json.extract! admin_post, :id, :title, :image, :description, :created_at, :updated_at, :avatar
json.url admin_post_url(admin_post, format: :json)