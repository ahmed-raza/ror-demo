json.array!(@movies) do |movie|
  json.extract! movie, :id, :title, :description, :trailer_url, :genre, :duration, :featured, :approved, :release_date
  json.url movie_url(movie, format: :json)
end
