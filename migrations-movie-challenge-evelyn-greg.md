Favorite Movies Challenge

Setup
Create a new Rails application called 'favorite_movies'.

➜  desktop cd migrations_movie_challenge 

Create the database

➜  migrations_movie_challenge git:(main) ✗ rails db:create
Created database 'migrations_movie_challenge_development'
Created database 'migrations_movie_challenge_test'

Generate a Movie model with a title attribute and a category attribute

➜  migrations_movie_challenge git:(main) ✗ rails generate model Movie title:string category:string
      invoke  active_record
      create    db/migrate/20230414004936_create_movies.rb
      create    app/models/movie.rb

➜  migrations_movie_challenge git:(main) ✗ rails db:migrate
== 20230414004936 CreateMovies: migrating =====================================
-- create_table(:movies)
   -> 0.0073s
== 20230414004936 CreateMovies: migrated (0.0074s) ============================

Challenges
Add five entries to the database via the Rails console

3.2.0 :001 > Movie.create(title: 'Magic Mikes Last Dance', category: 'Comedy')
  TRANSACTION (0.1ms)  BEGIN
  Movie Create (0.8ms)  INSERT INTO "movies" ("title", "category", "created_at", "updated_at") VALUES ($1, $2, $3, $4) RETURNING "id"  [["title", "Magic Mikes Last Dance"], ["category", "Comedy"], ["created_at", "2023-04-14 00:51:36.128940"], ["updated_at", "2023-04-14 00:51:36.128940"]]
  TRANSACTION (0.3ms)  COMMIT                                                         
 =>                                                                                   
#<Movie:0x0000000108a555b0                                                            
 id: 1,                                                                               
 title: "Magic Mikes Last Dance",                                                     
 category: "Comedy",                                                       
 created_at: Fri, 14 Apr 2023 00:51:36.128940000 UTC +00:00,               
 updated_at: Fri, 14 Apr 2023 00:51:36.128940000 UTC +00:00>  

3.2.0 :002 > Movie.create(title: 'Super Mario Bros', category: 'Animated')
  TRANSACTION (0.3ms)  BEGIN
  Movie Create (0.6ms)  INSERT INTO "movies" ("title", "category", "created_at", "updated_at") VALUES ($1, $2, $3, $4) RETURNING "id"  [["title", "Super Mario Bros"], ["category", "Animated"], ["created_at", "2023-04-14 01:03:07.473740"], ["updated_at", "2023-04-14 01:03:07.473740"]]
  TRANSACTION (0.5ms)  COMMIT                                         
 =>                                                                   
#<Movie:0x0000000107307a98                                            
 id: 2,                                                               
 title: "Super Mario Bros",                                           
 category: "Animated",                                                
 created_at: Fri, 14 Apr 2023 01:03:07.473740000 UTC +00:00,          
 updated_at: Fri, 14 Apr 2023 01:03:07.473740000 UTC +00:00> 

 3.2.0 :003 > Movie.create(title: 'Aquaman and The Lost Kingdom', category: 'Action')
  TRANSACTION (0.4ms)  BEGIN
  Movie Create (0.5ms)  INSERT INTO "movies" ("title", "category", "created_at", "updated_at") VALUES ($1, $2, $3, $4) RETURNING "id"  [["title", "Aquaman and The Lost Kingdom"], ["category", "Action"], ["created_at", "2023-04-14 01:04:35.705816"], ["updated_at", "2023-04-14 01:04:35.705816"]]                                                                            
  TRANSACTION (0.8ms)  COMMIT                                                     
 =>                                                                               
#<Movie:0x000000010951d858                                                        
 id: 3,                                                                           
 title: "Aquaman and The Lost Kingdom",                                           
 category: "Action",                                                              
 created_at: Fri, 14 Apr 2023 01:04:35.705816000 UTC +00:00,                      
 updated_at: Fri, 14 Apr 2023 01:04:35.705816000 UTC +00:00>  

 3.2.0 :004 > Movie.create(title: 'Ant-Man and The Wasp Quantumania', category: 'Adventure')
  TRANSACTION (0.3ms)  BEGIN
  Movie Create (0.5ms)  INSERT INTO "movies" ("title", "category", "created_at", "updated_at") VALUES ($1, $2, $3, $4) RETURNING "id"  [["title", "Ant-Man and The Wasp Quantumania"], ["category", "Adventure"], ["created_at", "2023-04-14 01:05:54.715966"], ["updated_at", "2023-04-14 01:05:54.715966"]]                                                                         
  TRANSACTION (0.9ms)  COMMIT                                                         
 =>                                                                                   
#<Movie:0x0000000109bb3708                                                            
 id: 4,                                                                               
 title: "Ant-Man and The Wasp Quantumania",                                           
 category: "Adventure",                                                               
 created_at: Fri, 14 Apr 2023 01:05:54.715966000 UTC +00:00,                          
 updated_at: Fri, 14 Apr 2023 01:05:54.715966000 UTC +00:00>  

 3.2.0 :005 > Movie.create(title: 'Peter Pan and Wendy', category: 'Adventure')
  TRANSACTION (0.3ms)  BEGIN
  Movie Create (0.4ms)  INSERT INTO "movies" ("title", "category", "created_at", "updated_at") VALUES ($1, $2, $3, $4) RETURNING "id"  [["title", "Peter Pan and Wendy"], ["category", "Adventure"], ["created_at", "2023-04-14 01:07:02.912453"], ["updated_at", "2023-04-14 01:07:02.912453"]]
  TRANSACTION (0.7ms)  COMMIT                                            
 =>                                                                      
#<Movie:0x0000000109b1a8c8                                               
 id: 5,                                                                  
 title: "Peter Pan and Wendy",                                           
 category: "Adventure",                                                  
 created_at: Fri, 14 Apr 2023 01:07:02.912453000 UTC +00:00,             
 updated_at: Fri, 14 Apr 2023 01:07:02.912453000 UTC +00:00>  

 3.2.0 :006 > Movie.all
  Movie Load (0.8ms)  SELECT "movies".* FROM "movies"
 =>                                                                      
[#<Movie:0x0000000109bbbf48                                  
  id: 1,                                                     
  title: "Magic Mikes Last Dance",                           
  category: "Comedy",                                        
  created_at: Fri, 14 Apr 2023 00:51:36.128940000 UTC +00:00,
  updated_at: Fri, 14 Apr 2023 00:51:36.128940000 UTC +00:00>,
 #<Movie:0x0000000109bbbe08                                  
  id: 2,                                                     
  title: "Super Mario Bros",                                 
  category: "Animated",                                      
  created_at: Fri, 14 Apr 2023 01:03:07.473740000 UTC +00:00,
  updated_at: Fri, 14 Apr 2023 01:03:07.473740000 UTC +00:00>,
 #<Movie:0x0000000109bbbcc8                                  
  id: 3,
  title: "Aquaman and The Lost Kingdom",
  category: "Action",
  created_at: Fri, 14 Apr 2023 01:04:35.705816000 UTC +00:00,
  updated_at: Fri, 14 Apr 2023 01:04:35.705816000 UTC +00:00>,
 #<Movie:0x0000000109bbbb88
  id: 4,
  title: "Ant-Man and The Wasp Quantumania",
  category: "Adventure",
  created_at: Fri, 14 Apr 2023 01:05:54.715966000 UTC +00:00,
  updated_at: Fri, 14 Apr 2023 01:05:54.715966000 UTC +00:00>,
 #<Movie:0x0000000109bbba48
  id: 5,
  title: "Peter Pan and Wendy",
  category: "Adventure",
  created_at: Fri, 14 Apr 2023 01:07:02.912453000 UTC +00:00,
  updated_at: Fri, 14 Apr 2023 01:07:02.912453000 UTC +00:00>] 

Create a migration to add a new column to the database called movie_length

➜  migrations_movie_challenge git:(main) ✗ rails generate migration movie_length
      invoke  active_record
      create    db/migrate/20230414011355_movie_length.rb

➜  migrations_movie_challenge git:(main) ✗ rails db:migrate
== 20230414011355 MovieLength: migrating ======================================
-- add_column(:movies, :movie_length, :string)
   -> 0.0013s
== 20230414011355 MovieLength: migrated (0.0013s) =============================

➜  migrations_movie_challenge git:(main) ✗ rails c
Loading development environment (Rails 7.0.4.3)
3.2.0 :001 > Movie.all
  Movie Load (0.8ms)  SELECT "movies".* FROM "movies"
 =>                                                          
[#<Movie:0x00000001058b45d8                                  
  id: 1,                                                     
  title: "Magic Mikes Last Dance",                           
  category: "Comedy",                                        
  created_at: Fri, 14 Apr 2023 00:51:36.128940000 UTC +00:00,
  updated_at: Fri, 14 Apr 2023 00:51:36.128940000 UTC +00:00,
  movie_length: nil>,                                        
 #<Movie:0x0000000105a36550                                  
  id: 2,                                                     
  title: "Super Mario Bros",                                 
  category: "Animated",                                      
  created_at: Fri, 14 Apr 2023 01:03:07.473740000 UTC +00:00,
  updated_at: Fri, 14 Apr 2023 01:03:07.473740000 UTC +00:00,
  movie_length: nil>,
 #<Movie:0x0000000105a364b0
  id: 3,
  title: "Aquaman and The Lost Kingdom",
  category: "Action",
  created_at: Fri, 14 Apr 2023 01:04:35.705816000 UTC +00:00,
  updated_at: Fri, 14 Apr 2023 01:04:35.705816000 UTC +00:00,
  movie_length: nil>,
 #<Movie:0x0000000105a36410
  id: 4,
  title: "Ant-Man and The Wasp Quantumania",
  category: "Adventure",
  created_at: Fri, 14 Apr 2023 01:05:54.715966000 UTC +00:00,
  updated_at: Fri, 14 Apr 2023 01:05:54.715966000 UTC +00:00,
  movie_length: nil>,
 #<Movie:0x0000000105a36370
  id: 5,
  title: "Peter Pan and Wendy",
  category: "Adventure",
  created_at: Fri, 14 Apr 2023 01:07:02.912453000 UTC +00:00,
  updated_at: Fri, 14 Apr 2023 01:07:02.912453000 UTC +00:00,
  movie_length: nil>] 

Update the values of the five existing attributes to include a movie_length value

➜  migrations_movie_challenge git:(main) ✗ rails generate migration movie_length_value
      invoke  active_record
      create    db/migrate/20230414015749_movie_length_value.rb

➜  migrations_movie_challenge git:(main) ✗ rails db:migrate
== 20230414015749 MovieLengthValue: migrating =================================
-- add_column(:movies, :movie_length_value, :integer)
   -> 0.0014s
== 20230414015749 MovieLengthValue: migrated (0.0015s) ========================

3.2.0 :035 > value = Movie.update_all(movie_length:'90 min')
  Movie Update All (1.7ms)  UPDATE "movies" SET "movie_length" = $1  [["movie_length", "90 min"]]                                               
 => 5  

 3.2.0 :036 > Movie.all
  Movie Load (0.7ms)  SELECT "movies".* FROM "movies"
 =>                                                          
[#<Movie:0x000000010835b908                                  
  id: 1,                                                     
  title: "Magic Mikes Last Dance",                           
  category: "Comedy",                                        
  created_at: Fri, 14 Apr 2023 00:51:36.128940000 UTC +00:00,
  updated_at: Fri, 14 Apr 2023 00:51:36.128940000 UTC +00:00,
  movie_length: "90 min",                                    
  movie_length_value: nil>,                                  
 #<Movie:0x000000010835b868                                  
  id: 2,                                                     
  title: "Super Mario Bros",                                 
  category: "Animated",                                      
  created_at: Fri, 14 Apr 2023 01:03:07.473740000 UTC +00:00,
  updated_at: Fri, 14 Apr 2023 01:03:07.473740000 UTC +00:00,
  movie_length: "90 min",
  movie_length_value: nil>,
 #<Movie:0x000000010835b7c8
  id: 3,
  title: "Aquaman and The Lost Kingdom",
  category: "Action",
  created_at: Fri, 14 Apr 2023 01:04:35.705816000 UTC +00:00,
  updated_at: Fri, 14 Apr 2023 01:04:35.705816000 UTC +00:00,
  movie_length: "90 min",
  movie_length_value: nil>,
 #<Movie:0x000000010835b728
  id: 4,
  title: "Ant-Man and The Wasp Quantumania",
  category: "Adventure",
  created_at: Fri, 14 Apr 2023 01:05:54.715966000 UTC +00:00,
  updated_at: Fri, 14 Apr 2023 01:05:54.715966000 UTC +00:00,
  movie_length: "90 min",
  movie_length_value: nil>,
 #<Movie:0x000000010835b688
  id: 5,
  title: "Peter Pan and Wendy",
  category: "Adventure",
  created_at: Fri, 14 Apr 2023 01:07:02.912453000 UTC +00:00,
  updated_at: Fri, 14 Apr 2023 01:07:02.912453000 UTC +00:00,
  movie_length: "90 min",
  movie_length_value: nil>] 

Generate a migration to rename the column 'category' to 'genre'

➜  migrations_movie_challenge git:(main) ✗ rails generate migration remove_category_add_genre_to_movies
      invoke  active_record
      create    db/migrate/20230414035027_remove_category_add_genre_to_movies.rb

➜  migrations_movie_challenge git:(main) ✗ rails db:migrate
== 20230414035027 RemoveCategoryAddGenreToMovies: migrating ===================
-- rename_column(:movies, :category, :genre)
   -> 0.0024s
== 20230414035027 RemoveCategoryAddGenreToMovies: migrated (0.0024s) ==========

➜  migrations_movie_challenge git:(main) ✗ rails c
Loading development environment (Rails 7.0.4.3)
3.2.0 :001 > Movie.all
  Movie Load (0.9ms)  SELECT "movies".* FROM "movies"
 =>                                                          
[#<Movie:0x00000001091af770                                  
  id: 1,                                                     
  title: "Magic Mikes Last Dance",                           
  genre: "Comedy",                                           
  created_at: Fri, 14 Apr 2023 00:51:36.128940000 UTC +00:00,
  updated_at: Fri, 14 Apr 2023 00:51:36.128940000 UTC +00:00,
  movie_length: "90 min",                                    
  movie_length_value: nil>,                                  
 #<Movie:0x00000001093a5200                                  
  id: 2,                                                     
  title: "Super Mario Bros",                                 
  genre: "Animated",                                         
  created_at: Fri, 14 Apr 2023 01:03:07.473740000 UTC +00:00,
  updated_at: Fri, 14 Apr 2023 01:03:07.473740000 UTC +00:00,
  movie_length: "90 min",
  movie_length_value: nil>,
 #<Movie:0x00000001093a5160
  id: 3,
  title: "Aquaman and The Lost Kingdom",
  genre: "Action",
  created_at: Fri, 14 Apr 2023 01:04:35.705816000 UTC +00:00,
  updated_at: Fri, 14 Apr 2023 01:04:35.705816000 UTC +00:00,
  movie_length: "90 min",
  movie_length_value: nil>,
 #<Movie:0x00000001093a50c0
  id: 4,
  title: "Ant-Man and The Wasp Quantumania",
  genre: "Adventure",
  created_at: Fri, 14 Apr 2023 01:05:54.715966000 UTC +00:00,
  updated_at: Fri, 14 Apr 2023 01:05:54.715966000 UTC +00:00,
  movie_length: "90 min",
  movie_length_value: nil>,
 #<Movie:0x00000001093a5020
  id: 5,
  title: "Peter Pan and Wendy",
  genre: "Adventure",
  created_at: Fri, 14 Apr 2023 01:07:02.912453000 UTC +00:00,
  updated_at: Fri, 14 Apr 2023 01:07:02.912453000 UTC +00:00,
  movie_length: "90 min",
  movie_length_value: nil>] 