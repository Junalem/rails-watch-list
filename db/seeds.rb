require 'open-uri'
Bookmark.destroy_all
Movie.destroy_all
# List.destroy_all

# the Le Wagon copy of the API
url = 'http://tmdb.lewagon.com/movie/top_rated'
response = JSON.parse(URI.open(url).read)

response['results'].each do |movie_hash|
  # create an instance with the hash
  Movie.create!(title: movie_hash["original_title"], overview: movie_hash["overview"], poster_url: "https://image.tmdb.org/t/p/w500" + movie_hash['poster_path'], rating: movie_hash["vote_average"]
  )
end

List.destroy_all
list1 = List.create(name: 'Action')
file_1 = URI.open("https://img-9gag-fun.9cache.com/photo/aeDZm0W_460s.jpg")
list1.photo.attach(io: file_1, filename: "kyiv.png", content_type: "image/png")
list1.save

list2 = List.create(name: 'Comedy')
file_2 = URI.open("https://imagesvc.meredithcorp.io/v3/mm/image?q=60&c=sc&poi=face&w=2000&h=1333&url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F47%2F2020%2F06%2F27%2Fwhite-cat-big-eyes-cat-ledge-1127317526-2000.jpg")
list2.photo.attach(io: file_2, filename: "kyiv.png", content_type: "image/png")
list2.save

list3 = List.create(name: 'Drama')
file_3 = URI.open("https://static.boredpanda.com/blog/wp-content/uploads/2017/04/funny-dramatic-cats-15-58f730e6eb2ab__605.jpg")
list3.photo.attach(io: file_3, filename: "kyiv.png", content_type: "image/png")
list3.save

list5 = List.create(name: 'Fantasy')
file_5 = URI.open("https://wallpapercave.com/wp/wp3795588.jpg")
list5.photo.attach(io: file_5, filename: "kyiv.png", content_type: "image/png")
list5.save

list6 = List.create(name: 'Horror')
file_6 = URI.open("https://laughingsquid.com/wp-content/uploads/2019/10/Kitten-Watching-Horror-Film.jpeg")
list6.photo.attach(io: file_6, filename: "kyiv.png", content_type: "image/png")
list6.save

list7 = List.create(name: 'Mystery')
file_7 = URI.open("https://assets.mycast.io/actor_images/actor-cat-467959_large.jpg?1656337107")
list7.photo.attach(io: file_7, filename: "kyiv.png", content_type: "image/png")
list7.save

list8 = List.create(name: 'Romance')
file_8 = URI.open("https://media.istockphoto.com/id/1137985887/photo/two-beautiful-young-cats-walk-in-a-sunny-meadow-on-a-clear-spring-day-raising-their-tails-and.jpg?s=612x612&w=0&k=20&c=1uaefu-4_odFMbXC39L0GS9PI528ZzwWKitRwPzoXtA=")
list8.photo.attach(io: file_8, filename: "kyiv.png", content_type: "image/png")
list8.save

list9 = List.create(name: 'Thriller')
file_9 = URI.open("https://www.indiewire.com/wp-content/uploads/2019/03/goosethecat-blogroll-1551733410083-1280w-1551990377836_1280w.jpg?w=780")
list9.photo.attach(io: file_9, filename: "kyiv.png", content_type: "image/png")
list9.save

list10 = List.create(name: 'Western')
file_10 = URI.open("https://i5.walmartimages.com/asr/3269efd8-d846-4aec-83df-747d8923c3b8_2.27972da7e62007790d7120087f3eed5b.jpeg?odnHeight=612&odnWidth=612&odnBg=FFFFFF")
list10.photo.attach(io: file_10, filename: "kyiv.png", content_type: "image/png")
list10.save

comments = ["Starts out a bit dim and unfocused and becomes sharper and more illuminating as it unreels.",
  "That was a really good movie",
  "I was not expecting it to be that good",
  "I'm so glad I took the time to see this",
  "That was a really good movie",
  "That was a really good movie! I'm so glad I spent the money to get a ticket for it.",
  "I thought that was a really good movie. I get why you didn't like it, but I think it's by far one of my favorites ever.",
  "I think that was a really good movie. I'm glad you took me along to watch this one!",
  "I was not expecting it to be that good",
  "I was not expecting it to be that good! I simply can't believe how they decided to end it, though.",
  "I was not expecting it to be that good! It was such a strong contender for a modern classic!",
  "I was not expecting it to be that good! I'm really blown away by how much time and effort they spent on this!",
  "I'm so glad I took the time to see this! I think I would have regretted it if I didn't at least give it a try.",
  "I'm so glad I took the time to see this! I knew it would be good, but I don't think I realized just how good.",
  "I am so glad I took time out of my day to see this. I won't be forgetting that plot for a long time to come yet!",
  "What a brilliant movie",
  "What a brilliant movie that was! It had everything I could possibly want out of a big production like that.",
  "What a brilliant movie! I'm so glad I got the chance to see it in theaters before it was released.",
  "What a brilliant movie. I don't think there's been a single movie close to that one since it was released.",
  "I had a fun time watching that",
  "I had such a fun time watching that! It was humorous in all the right places, but it also allowed me to think deeply.",
  "I had a fun time watching that one! I think I'll definitely be excited to go and see the second installation when it's out.",
  "I think this is a masterpiece",
  "I would see that again",
  "I didn't want it to end",
  "I loved every second"
]

Movie.all.each do |movie|
  Bookmark.create!(movie: movie, list:[list1, list2, list3, list5, list6, list7, list8, list9, list10][rand(0..8)], comment: comments[rand(0..25)])
end
