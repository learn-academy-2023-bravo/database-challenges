➜  favorite_movies git:(main) ✗ rails generate model Movie title:string category:string
      invoke  active_record
      create    db/migrate/20230413221027_create_movies.rb
      create    app/models/movie.rb


3.2.0 :001 > Movie.all
  Movie Load (27.7ms)  SELECT "movies".* FROM "movies"
 =>                                                          
[#<Movie:0x000000010dcd7dd8                                  
  id: 1,                                                     
  title: "Black Panther",                                    
  category: "Action",                                        
  created_at: Thu, 13 Apr 2023 22:19:54.772632000 UTC +00:00,
  updated_at: Thu, 13 Apr 2023 22:19:54.772632000 UTC +00:00>,
 #<Movie:0x000000010e0fda20                                  
  id: 2,                                                     
  title: "Get Out",                                          
  category: "Thriller",                                      
  created_at: Thu, 13 Apr 2023 22:20:55.721503000 UTC +00:00,
  updated_at: Thu, 13 Apr 2023 22:20:55.721503000 UTC +00:00>,
 #<Movie:0x000000010e0fd980                                  
  id: 3,
  title: "Transformers",
  category: "Action",
  created_at: Thu, 13 Apr 2023 22:21:13.881136000 UTC +00:00,
  updated_at: Thu, 13 Apr 2023 22:21:13.881136000 UTC +00:00>,
 #<Movie:0x000000010e0fd8e0
  id: 4,
  title: "Anabelle",
  category: "Scary",
  created_at: Thu, 13 Apr 2023 22:21:47.865383000 UTC +00:00,
  updated_at: Thu, 13 Apr 2023 22:21:47.865383000 UTC +00:00>,
 #<Movie:0x000000010e0fd840
  id: 5,
  title: "Scar Face",
  category: "Crime Film",
  created_at: Thu, 13 Apr 2023 22:23:40.858488000 UTC +00:00,
  updated_at: Thu, 13 Apr 2023 22:23:40.858488000 UTC +00:00>] 


Movie.all
  Movie Load (0.9ms)  SELECT "movies".* FROM "movies"
 =>                                                 
[#<Movie:0x00000001121ed1e8                         
  id: 1,
  title: "Black Panther",
  category: "Action",
  created_at: Thu, 13 Apr 2023 22:19:54.772632000 UTC +00:00,
  updated_at: Thu, 13 Apr 2023 22:19:54.772632000 UTC +00:00,
  movie_length: nil>,
 #<Movie:0x0000000112521c38
  id: 2,
  title: "Get Out",
  category: "Thriller",
  created_at: Thu, 13 Apr 2023 22:20:55.721503000 UTC +00:00,
  updated_at: Thu, 13 Apr 2023 22:20:55.721503000 UTC +00:00,
  movie_length: nil>,
 #<Movie:0x0000000112521b98
  id: 3,
  title: "Transformers",
  category: "Action",
  created_at: Thu, 13 Apr 2023 22:21:13.881136000 UTC +00:00,
  updated_at: Thu, 13 Apr 2023 22:21:13.881136000 UTC +00:00,
  movie_length: nil>,
 #<Movie:0x0000000112521af8
  id: 4,
  title: "Anabelle",
  category: "Scary",
  created_at: Thu, 13 Apr 2023 22:21:47.865383000 UTC +00:00,
  updated_at: Thu, 13 Apr 2023 22:21:47.865383000 UTC +00:00,
  movie_length: nil>,
 #<Movie:0x0000000112521a58
  id: 5,
  title: "Scar Face",
  category: "Crime Film",
  created_at: Thu, 13 Apr 2023 22:23:40.858488000 UTC +00:00,
  updated_at: Thu, 13 Apr 2023 22:23:40.858488000 UTC +00:00,
  movie_length: nil>] 


3.2.0 :025 > Movie.all
  Movie Load (0.5ms)  SELECT "movies".* FROM "movies"
 =>                                                             
[#<Movie:0x0000000112e38e98                                     
  id: 1,                                                        
  title: "Black Panther",                                       
  category: "Action",                                           
  created_at: Thu, 13 Apr 2023 22:19:54.772632000 UTC +00:00,   
  updated_at: Thu, 13 Apr 2023 22:54:41.656270000 UTC +00:00,   
  movie_length: "134 mins">,                                 
 #<Movie:0x0000000112e38d58                                  
  id: 2,                                                     
  title: "Get Out",                                          
  category: "Thriller",                                      
  created_at: Thu, 13 Apr 2023 22:20:55.721503000 UTC +00:00,
  updated_at: Thu, 13 Apr 2023 22:58:02.971607000 UTC +00:00,
  movie_length: "104 mins">,
 #<Movie:0x0000000112e38c18
  id: 3,
  title: "Transformers",
  category: "Action",
  created_at: Thu, 13 Apr 2023 22:21:13.881136000 UTC +00:00,
  updated_at: Thu, 13 Apr 2023 22:59:10.288568000 UTC +00:00,
  movie_length: "144 mins">,
 #<Movie:0x0000000112e38ad8
  id: 4,
  title: "Anabelle",
  category: "Scary",
  created_at: Thu, 13 Apr 2023 22:21:47.865383000 UTC +00:00,
  updated_at: Thu, 13 Apr 2023 23:00:11.125127000 UTC +00:00,
  movie_length: "98 minutes">,
 #<Movie:0x0000000112e38998
  id: 5,
  title: "Scar Face",
  category: "Crime Film",
  created_at: Thu, 13 Apr 2023 22:23:40.858488000 UTC +00:00,
  updated_at: Thu, 13 Apr 2023 23:01:31.483019000 UTC +00:00,
  movie_length: "170 mins">] 



3.2.0 :001 > Movie.all
  Movie Load (0.9ms)  SELECT "movies".* FROM "movies"
 =>                                                 
[#<Movie:0x000000010e9d6228                         
  id: 1,
  title: "Black Panther",
  genre: "Action",
  created_at: Thu, 13 Apr 2023 22:19:54.772632000 UTC +00:00,
  updated_at: Thu, 13 Apr 2023 22:54:41.656270000 UTC +00:00,
  movie_length: "134 mins">,
 #<Movie:0x000000010ec71410
  id: 2,
  title: "Get Out",
  genre: "Thriller",
  created_at: Thu, 13 Apr 2023 22:20:55.721503000 UTC +00:00,
  updated_at: Thu, 13 Apr 2023 22:58:02.971607000 UTC +00:00,
  movie_length: "104 mins">,
 #<Movie:0x000000010ec71370
  id: 3,
  title: "Transformers",
  genre: "Action",
  created_at: Thu, 13 Apr 2023 22:21:13.881136000 UTC +00:00,
  updated_at: Thu, 13 Apr 2023 22:59:10.288568000 UTC +00:00,
  movie_length: "144 mins">,
 #<Movie:0x000000010ec712d0
  id: 4,
  title: "Anabelle",
  genre: "Scary",
  created_at: Thu, 13 Apr 2023 22:21:47.865383000 UTC +00:00,
  updated_at: Thu, 13 Apr 2023 23:00:11.125127000 UTC +00:00,
  movie_length: "98 minutes">,
 #<Movie:0x000000010ec71230
  id: 5,
  title: "Scar Face",
  genre: "Crime Film",
  created_at: Thu, 13 Apr 2023 22:23:40.858488000 UTC +00:00,
  updated_at: Thu, 13 Apr 2023 23:01:31.483019000 UTC +00:00,
  movie_length: "170 mins">] 