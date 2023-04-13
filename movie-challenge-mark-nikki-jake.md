Last login: Thu Apr 13 15:00:00 on ttys000
[oh-my-zsh] plugin 'zsh-syntax-highlighting' not found
[oh-my-zsh] theme 'powerlevel10k/powerlevel10k' not found
learnacademy@LEARNs-MacBook-Air favorite_movies % rails generate model Movie title:string category:string
      invoke  active_record
      create    db/migrate/20230413221136_create_movies.rb
      create    app/models/movie.rb
      invoke    test_unit
      create      test/models/movie_test.rb
      create      test/fixtures/movies.yml
learnacademy@LEARNs-MacBook-Air favorite_movies % code .            
learnacademy@LEARNs-MacBook-Air favorite_movies % rails db:migrate
== 20230413221136 CreateMovies: migrating =====================================
-- create_table(:movies)
   -> 0.0007s
== 20230413221136 CreateMovies: migrated (0.0007s) ============================

learnacademy@LEARNs-MacBook-Air favorite_movies % rails c         
Loading development environment (Rails 7.0.4.3)
3.2.0 :001 > FavoriteMovies.all
(irb):1:in `<main>': undefined method `all' for FavoriteMovies:Module (NoMethodError)                                                        
                                                             
FavoriteMovies.all                                           
              ^^^^                                           
3.2.0 :002 > FavoriteMovies.create(title:'The Players Club', category:'Drama')
(irb):2:in `<main>': undefined method `create' for FavoriteMovies:Module (NoMethodError)                                                                      
                                                                              
FavoriteMovies.create(title:'The Players Club', category:'Drama')             
              ^^^^^^^                                                         
3.2.0 :003 > Movie.create(title:'The Players Club', category:'Drama')
  TRANSACTION (0.0ms)  begin transaction
  Movie Create (0.4ms)  INSERT INTO "movies" ("title", "category", "created_at", "updated_at") VALUES (?, ?, ?, ?)  [["title", "The Players Club"], ["category", "Drama"], ["created_at", "2023-04-13 22:16:28.088799"], ["updated_at", "2023-04-13 22:16:28.088799"]]                                                        
  TRANSACTION (0.4ms)  commit transaction                                     
 =>                                                                           
#<Movie:0x00000001048dcc00                                                    
 id: 1,                                                                       
 title: "The Players Club",                                          
 category: "Drama",                                                  
 created_at: Thu, 13 Apr 2023 22:16:28.088799000 UTC +00:00,         
 updated_at: Thu, 13 Apr 2023 22:16:28.088799000 UTC +00:00>         
3.2.0 :004 > Movie.create(title:'The Shining', category:'Horror')
  TRANSACTION (0.1ms)  begin transaction
  Movie Create (0.6ms)  INSERT INTO "movies" ("title", "category", "created_at", "updated_at") VALUES (?, ?, ?, ?)  [["title", "The Shining"], ["category", "Horror"], ["created_at", "2023-04-13 22:17:33.230571"], ["updated_at", "2023-04-13 22:17:33.230571"]]                                            
  TRANSACTION (0.7ms)  commit transaction                     
 =>                                                           
#<Movie:0x0000000105762e50                                    
 id: 2,                                                       
 title: "The Shining",                                       
 category: "Horror",                                         
 created_at: Thu, 13 Apr 2023 22:17:33.230571000 UTC +00:00, 
 updated_at: Thu, 13 Apr 2023 22:17:33.230571000 UTC +00:00> 
3.2.0 :005 > Movie.create(title:'Cocaine Bear', category:'Comedy')
  TRANSACTION (0.1ms)  begin transaction
  Movie Create (0.5ms)  INSERT INTO "movies" ("title", "category", "created_at", "updated_at") VALUES (?, ?, ?, ?)  [["title", "Cocaine Bear"], ["category", "Comedy"], ["created_at", "2023-04-13 22:17:58.595952"], ["updated_at", "2023-04-13 22:17:58.595952"]]                                    
  TRANSACTION (1.3ms)  commit transaction              
 =>                                                    
#<Movie:0x0000000105c63490                             
 id: 3,                                                
 title: "Cocaine Bear",                                
 category: "Comedy",                                   
 created_at: Thu, 13 Apr 2023 22:17:58.595952000 UTC +00:00,
 updated_at: Thu, 13 Apr 2023 22:17:58.595952000 UTC +00:00> 
3.2.0 :006 > Movie.create(title:'Happy Gilmore', category:'Comedy')
  TRANSACTION (0.1ms)  begin transaction
  Movie Create (0.5ms)  INSERT INTO "movies" ("title", "category", "created_at", "updated_at") VALUES (?, ?, ?, ?)  [["title", "Happy Gilmore"], ["category", "Comedy"], ["created_at", "2023-04-13 22:18:21.359332"], ["updated_at", "2023-04-13 22:18:21.359332"]]                                
  TRANSACTION (0.5ms)  commit transaction           
 =>                                                 
#<Movie:0x0000000105c6c1d0                          
 id: 4,                                             
 title: "Happy Gilmore",                            
 category: "Comedy",                                
 created_at: Thu, 13 Apr 2023 22:18:21.359332000 UTC +00:00,
 updated_at: Thu, 13 Apr 2023 22:18:21.359332000 UTC +00:00> 
3.2.0 :007 > Movie.create(title:'House on Haunted Hill', category:'Horror')
  TRANSACTION (0.1ms)  begin transaction
  Movie Create (0.5ms)  INSERT INTO "movies" ("title", "category", "created_at", "updated_at") VALUES (?, ?, ?, ?)  [["title", "House on Haunted Hill"], ["category", "Horror"], ["created_at", "2023-04-13 22:18:49.573328"], ["updated_at", "2023-04-13 22:18:49.573328"]]
  TRANSACTION (0.7ms)  commit transaction
 => 
#<Movie:0x00000001004c8348
 id: 5,
 title: "House on Haunted Hill",
 category: "Horror",
 created_at: Thu, 13 Apr 2023 22:18:49.573328000 UTC +00:00,
 updated_at: Thu, 13 Apr 2023 22:18:49.573328000 UTC +00:00> 
3.2.0 :008 > exit
learnacademy@LEARNs-MacBook-Air favorite_movies % rails db:migrate
learnacademy@LEARNs-MacBook-Air favorite_movies % rails c         
Loading development environment (Rails 7.0.4.3)
3.2.0 :001 > rails db:migrate
(irb):1:in `<main>': undefined local variable or method `migrate' for main:Object (NameError)                             
                                          
rails db:migrate                          
         ^^^^^^^                          
3.2.0 :002 > exit
learnacademy@LEARNs-MacBook-Air favorite_movies % rails db:migrate
learnacademy@LEARNs-MacBook-Air favorite_movies % rails generate migration AddMovieLengthColumnToMovie
      invoke  active_record
      create    db/migrate/20230413222335_add_movie_length_column_to_movie.rb
learnacademy@LEARNs-MacBook-Air favorite_movies % rails db:migrate
== 20230413222335 AddMovieLengthColumnToMovie: migrating ======================
-- add_column(:favorite_movies, :movie_length, :string)
rails aborted!
StandardError: An error has occurred, this and all later migrations canceled:

SQLite3::SQLException: no such table: favorite_movies
/Users/learnacademy/Desktop/database-challenges/favorite_movies/db/migrate/20230413222335_add_movie_length_column_to_movie.rb:3:in `change'

Caused by:
ActiveRecord::StatementInvalid: SQLite3::SQLException: no such table: favorite_movies
/Users/learnacademy/Desktop/database-challenges/favorite_movies/db/migrate/20230413222335_add_movie_length_column_to_movie.rb:3:in `change'

Caused by:
SQLite3::SQLException: no such table: favorite_movies
/Users/learnacademy/Desktop/database-challenges/favorite_movies/db/migrate/20230413222335_add_movie_length_column_to_movie.rb:3:in `change'
Tasks: TOP => db:migrate
(See full trace by running task with --trace)
learnacademy@LEARNs-MacBook-Air favorite_movies % rails db:migrate
== 20230413222335 AddMovieLengthColumnToMovie: migrating ======================
-- add_column(:movies, :movie_length, :string)
   -> 0.0022s
== 20230413222335 AddMovieLengthColumnToMovie: migrated (0.0022s) =============

learnacademy@LEARNs-MacBook-Air favorite_movies % rails c         
Loading development environment (Rails 7.0.4.3)
3.2.0 :001 > Movies.all
(irb):1:in `<main>': uninitialized constant Movies (NameError)
                          
Movies.all                
^^^^^^                    
3.2.0 :002 > Movie.all
  Movie Load (0.2ms)  SELECT "movies".* FROM "movies"
 =>                                                          
[#<Movie:0x000000010758c228                                  
  id: 1,                                                     
  title: "The Players Club",                                 
  category: "Drama",                                         
  created_at: Thu, 13 Apr 2023 22:16:28.088799000 UTC +00:00,
  updated_at: Thu, 13 Apr 2023 22:16:28.088799000 UTC +00:00,
  movie_length: nil>,                                        
 #<Movie:0x00000001077cb908                                  
  id: 2,                                                     
  title: "The Shining",                                      
  category: "Horror",                                        
  created_at: Thu, 13 Apr 2023 22:17:33.230571000 UTC +00:00,
  updated_at: Thu, 13 Apr 2023 22:17:33.230571000 UTC +00:00,
  movie_length: nil>,
 #<Movie:0x00000001077cb868
  id: 3,
  title: "Cocaine Bear",
  category: "Comedy",
  created_at: Thu, 13 Apr 2023 22:17:58.595952000 UTC +00:00,
  updated_at: Thu, 13 Apr 2023 22:17:58.595952000 UTC +00:00,
  movie_length: nil>,
 #<Movie:0x00000001077cb7c8
  id: 4,
  title: "Happy Gilmore",
  category: "Comedy",
  created_at: Thu, 13 Apr 2023 22:18:21.359332000 UTC +00:00,
  updated_at: Thu, 13 Apr 2023 22:18:21.359332000 UTC +00:00,
  movie_length: nil>,
 #<Movie:0x00000001077cb728
  id: 5,
  title: "House on Haunted Hill",
  category: "Horror",
  created_at: Thu, 13 Apr 2023 22:18:49.573328000 UTC +00:00,
  updated_at: Thu, 13 Apr 2023 22:18:49.573328000 UTC +00:00,
  movie_length: nil>] 
3.2.0 :003 > time = Movie.find(1)
  Movie Load (0.2ms)  SELECT "movies".* FROM "movies" WHERE "movies"."id" = ? LIMIT ?  [["id", 1], ["LIMIT", 1]]                                    
 =>                                                                 
#<Movie:0x000000010778c000                                          
...                                                                 
3.2.0 :004 > time.update(movie_length:'189 minutes')
  TRANSACTION (0.1ms)  begin transaction
  Movie Update (0.6ms)  UPDATE "movies" SET "updated_at" = ?, "movie_length" = ? WHERE "movies"."id" = ?  [["updated_at", "2023-04-13 22:33:05.193431"], ["movie_length", "189 minutes"], ["id", 1]]                                
  TRANSACTION (1.1ms)  commit transaction                           
 => true                                                            
3.2.0 :005 > Movie.update_all(movie_length:'300 minutes')
  Movie Update All (1.9ms)  UPDATE "movies" SET "movie_length" = ?  [["movie_length", "300 minutes"]]                                               
 => 5                                                         
3.2.0 :006 > Movie.all
  Movie Load (0.2ms)  SELECT "movies".* FROM "movies"
 =>                                                          
[#<Movie:0x0000000107f6b7d0                                  
  id: 1,                                                     
  title: "The Players Club",                                 
  category: "Drama",                                         
  created_at: Thu, 13 Apr 2023 22:16:28.088799000 UTC +00:00,
  updated_at: Thu, 13 Apr 2023 22:33:05.193431000 UTC +00:00,
  movie_length: "300 minutes">,                              
 #<Movie:0x0000000107f6b690                                  
  id: 2,                                                     
  title: "The Shining",                                      
  category: "Horror",                                        
  created_at: Thu, 13 Apr 2023 22:17:33.230571000 UTC +00:00,
  updated_at: Thu, 13 Apr 2023 22:17:33.230571000 UTC +00:00,
  movie_length: "300 minutes">,
 #<Movie:0x0000000107f6b550
  id: 3,
  title: "Cocaine Bear",
  category: "Comedy",
  created_at: Thu, 13 Apr 2023 22:17:58.595952000 UTC +00:00,
  updated_at: Thu, 13 Apr 2023 22:17:58.595952000 UTC +00:00,
  movie_length: "300 minutes">,
 #<Movie:0x0000000107f6b410
  id: 4,
  title: "Happy Gilmore",
  category: "Comedy",
  created_at: Thu, 13 Apr 2023 22:18:21.359332000 UTC +00:00,
  updated_at: Thu, 13 Apr 2023 22:18:21.359332000 UTC +00:00,
  movie_length: "300 minutes">,
 #<Movie:0x0000000107f6b2d0
  id: 5,
  title: "House on Haunted Hill",
  category: "Horror",
  created_at: Thu, 13 Apr 2023 22:18:49.573328000 UTC +00:00,
  updated_at: Thu, 13 Apr 2023 22:18:49.573328000 UTC +00:00,
  movie_length: "300 minutes">] 
3.2.0 :007 > 
^C
3.2.0 :007 > exit
learnacademy@LEARNs-MacBook-Air favorite_movies % rails g migration change_category_column_to_genre_column
      invoke  active_record
      create    db/migrate/20230413223843_change_category_column_to_genre_column.rb
learnacademy@LEARNs-MacBook-Air favorite_movies % rails db:migrate
== 20230413223843 ChangeCategoryColumnToGenreColumn: migrating ================
-- rename_column(:movies, :categories, :genre)
rails aborted!
StandardError: An error has occurred, this and all later migrations canceled:

No such column: movies.categories
/Users/learnacademy/Desktop/database-challenges/favorite_movies/db/migrate/20230413223843_change_category_column_to_genre_column.rb:3:in `change'

Caused by:
ActiveRecord::ActiveRecordError: No such column: movies.categories
/Users/learnacademy/Desktop/database-challenges/favorite_movies/db/migrate/20230413223843_change_category_column_to_genre_column.rb:3:in `change'
Tasks: TOP => db:migrate
(See full trace by running task with --trace)
learnacademy@LEARNs-MacBook-Air favorite_movies % rails db:migrate
== 20230413223843 ChangeCategoryColumnToGenreColumn: migrating ================
-- rename_column(:movies, :category, :genre)
   -> 0.0100s
== 20230413223843 ChangeCategoryColumnToGenreColumn: migrated (0.0100s) =======

learnacademy@LEARNs-MacBook-Air favorite_movies % rails c                     
Loading development environment (Rails 7.0.4.3)
3.2.0 :001 > Movie.all
  Movie Load (0.1ms)  SELECT "movies".* FROM "movies"
 =>                                                          
[#<Movie:0x0000000104bffa18                                  
  id: 1,                                                     
  title: "The Players Club",                                 
  genre: "Drama",                                            
  created_at: Thu, 13 Apr 2023 22:16:28.088799000 UTC +00:00,
  updated_at: Thu, 13 Apr 2023 22:33:05.193431000 UTC +00:00,
  movie_length: "300 minutes">,                              
 #<Movie:0x0000000105031690                                  
  id: 2,                                                     
  title: "The Shining",                                      
  genre: "Horror",                                           
  created_at: Thu, 13 Apr 2023 22:17:33.230571000 UTC +00:00,
  updated_at: Thu, 13 Apr 2023 22:17:33.230571000 UTC +00:00,
  movie_length: "300 minutes">,
 #<Movie:0x00000001050315f0
  id: 3,
  title: "Cocaine Bear",
  genre: "Comedy",
  created_at: Thu, 13 Apr 2023 22:17:58.595952000 UTC +00:00,
  updated_at: Thu, 13 Apr 2023 22:17:58.595952000 UTC +00:00,
  movie_length: "300 minutes">,
 #<Movie:0x0000000105031550
  id: 4,
  title: "Happy Gilmore",
  genre: "Comedy",
  created_at: Thu, 13 Apr 2023 22:18:21.359332000 UTC +00:00,
  updated_at: Thu, 13 Apr 2023 22:18:21.359332000 UTC +00:00,
  movie_length: "300 minutes">,
 #<Movie:0x00000001050314b0
  id: 5,
  title: "House on Haunted Hill",
  genre: "Horror",
  created_at: Thu, 13 Apr 2023 22:18:49.573328000 UTC +00:00,
  updated_at: Thu, 13 Apr 2023 22:18:49.573328000 UTC +00:00,
  movie_length: "300 minutes">] 