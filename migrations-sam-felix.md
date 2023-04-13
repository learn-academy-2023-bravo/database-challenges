Put this into the terminal:
rails generate migration rename_column

It will generate files in the migrate folder that contain:

class AddColumnsToList < ActiveRecord::Migration[7.0]
  def change
    add_column :movies, :movie_length, :string
  end
end


class RenameColumn < ActiveRecord::Migration[7.0]
  def change
    rename_column(:movies, :category, :genre)
  end
end


When run, this is the output:

favorite_movies git:(main) ✗ rails generate migration rename_column      
      invoke  active_record
      create    db/migrate/20230413224033_rename_column.rb
➜  favorite_movies git:(main) ✗ rails db:migrate                            
== 20230413224033 RenameColumn: migrating =====================================
-- rename_column(:movies, :category, :genre)
   -> 0.0074s
== 20230413224033 RenameColumn: migrated (0.0075s) ============================

➜  favorite_movies git:(main) ✗ rails c
Loading development environment (Rails 7.0.4.3)
3.2.0 :001 > Movie.all
  Movie Load (0.5ms)  SELECT "movies".* FROM "movies"
 =>                                                          
[#<Movie:0x0000000105af9aa0                                  
  id: 1,                                                     
  title: "Finding Nemo",                                     
  genre: "Animated",                                         
  created_at: Thu, 13 Apr 2023 22:05:40.723911000 UTC +00:00,
  updated_at: Thu, 13 Apr 2023 22:37:27.016277000 UTC +00:00,
  movie_length: "1.5 Hours">,                                
 #<Movie:0x0000000105fbbf48                                  
  id: 2,                                                     
  title: "The Princess Bride",                               
  genre: "Fantasy",                                          
  created_at: Thu, 13 Apr 2023 22:06:32.905778000 UTC +00:00,
  updated_at: Thu, 13 Apr 2023 22:38:14.307882000 UTC +00:00,
  movie_length: "2 Hours">,
 #<Movie:0x0000000105fbbea8
  id: 3,
  title: "Toy Story",
  genre: "Animated",
  created_at: Thu, 13 Apr 2023 22:06:53.270585000 UTC +00:00,
  updated_at: Thu, 13 Apr 2023 22:38:38.617995000 UTC +00:00,
  movie_length: "1 Hour">,
 #<Movie:0x0000000105fbbe08
  id: 4,
  title: "Avatar",
  genre: "Fantasy",
  created_at: Thu, 13 Apr 2023 22:07:06.609018000 UTC +00:00,
  updated_at: Thu, 13 Apr 2023 22:39:06.199015000 UTC +00:00,
  movie_length: "2.5 Hours">,
 #<Movie:0x0000000105fbbd68
  id: 5,
  title: "007",
  genre: "Action",
  created_at: Thu, 13 Apr 2023 22:07:35.277451000 UTC +00:00,
  updated_at: Thu, 13 Apr 2023 22:39:18.686097000 UTC +00:00,
  movie_length: "2 Hours">] 
3.2.0 :002 > 
