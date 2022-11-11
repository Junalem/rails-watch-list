require 'open-uri'
Movie.destroy_all
# List.destroy_all

# the Le Wagon copy of the API
url = 'http://tmdb.lewagon.com/movie/top_rated'
response = JSON.parse(URI.open(url).read)

response['results'].each do |movie_hash|
  puts
  p movie_hash
  # create an instance with the hash
  Movie.create!(title: movie_hash["original_title"], overview: movie_hash["overview"], poster_url: movie_hash["poster_path"], rating: movie_hash["vote_average"]
  )
end

List.destroy_all
List.create(name: 'Action')
List.create!(name: 'Horror')
List.create!(name: 'Drama')
List.create!(name: 'Hate List')
