

Create a new Rails application called 'favorite_movies'.

<!-- rails new favorite_movie -d postgresql -T -->

Create the database

<!-- rails db:create -->

Generate a Movie model with a title attribute and a category attribute
Challenges

<!-- rails generate model Movie title:string category:string -->

Add five entries to the database via the Rails console

<!-- rails c
Movie.create(title:"Full Metal Jacket", category: "War History")
Movie.create(title:"Saving Private Ryan", category:"War History")
Movie.create(title:"Battle of Los Angeles", category:"War History")
Movie.create(title:"Fury", category:"War History")
Movie.create(title:"Jarhead", category:"War History") -->


Create a migration to add a new column to the database called movie_length
<!-- class AddMovieLengthColumn < ActiveRecord::Migration[7.0]
  def change
    add_column :movies, :length, :integer
  end
end -->


Update the values of the five existing attributes to include a movie_length value

<!-- movies_to_update = Movie.all
movies_to_update.update_all(length: 150) -->


Generate a migration to rename the column 'category' to 'genre'

<!-- rails generate migration RenameCategory
rails db:migrate
rails c
Movie.all
id: 1,                                                     
  title: "Full Metal Jacket",                                
  genre: "War History",                                    
  created_at: Thu, 13 Apr 2023 22:45:06.973549000 UTC +00:00,
  updated_at: Thu, 13 Apr 2023 22:45:06.973549000 UTC +00:00,
  length: 150>,                                              
 #<Movie:0x0000000105e40bf0                                  
  id: 2,                                                     
  title: "Saving Private Ryan",                              
  genre: "War History",                                    
  created_at: Thu, 13 Apr 2023 22:45:35.838120000 UTC +00:00,
  updated_at: Thu, 13 Apr 2023 22:45:35.838120000 UTC +00:00,
  length: 150>,
 #<Movie:0x0000000105e40b50
  id: 3,
  title: "Battle of Los Angeles",
  genre: "War History",
  created_at: Thu, 13 Apr 2023 22:46:21.639599000 UTC +00:00,
  updated_at: Thu, 13 Apr 2023 22:46:21.639599000 UTC +00:00,
  length: 150>,
 #<Movie:0x0000000105e40ab0
  id: 4,
  title: "Fury",
  genre: "War History",
  created_at: Thu, 13 Apr 2023 22:47:27.438526000 UTC +00:00,
  updated_at: Thu, 13 Apr 2023 22:47:27.438526000 UTC +00:00,
  length: 150>,
 #<Movie:0x0000000105e40a10
  id: 5,
  title: "Jarhead",
  genre: "War History",
  created_at: Thu, 13 Apr 2023 22:49:34.106232000 UTC +00:00,
  updated_at: Thu, 13 Apr 2023 22:49:34.106232000 UTC +00:00,
  length: 150>] -->
