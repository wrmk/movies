json.extract! movie, :id, :title, :text, :category, :created_at, :updated_at
json.url movie_url(movie, format: :json)
