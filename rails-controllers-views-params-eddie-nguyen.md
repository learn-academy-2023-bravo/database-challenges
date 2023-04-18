$ rails new travel_agent -d postgresql -T
$ rails db:create
$ rails s
$ rails generate controller Main
$ rm app/helpers/Main_helper.rb

#################################################

## asset<controller<concern

class MainController < ApplicationController
    def landing_page
        render 'landing_page'
    end
    
    def employees
        @members = ['Eddie', 'Nguyen']
    end
    def eddies_fav_list
        @fav_list = ['Book 1', 'Book 2', 'Book 3']
        render 'eddies_fav_list'
    end
    def nguyen_fav_list
        @activities = ['Martial Arts', 'Gardening', 'Tacos']
        render 'nguyen_fav_list'
    end
    def cubed
        @numbersupplied == params[:numbersupplied]
        if numbersupplied == "true"
            @number = params[:number**3]
        else
            @number = 'cantmaph'
        end
    end
end

#######################################################
## config<route

Rails.application.routes.draw do

  root 'main#landing_page'
  get '/landing_page' => 'main#landing_page'
  get '/employees' => 'main#employees'
  get '/eddies_fav_list' => 'main#eddies_fav_list'
  get '/nguyen_fav_list' => 'main#nguyen_fav_list'
  get '/cubed' => 'main#cubed'
end

#######################################################
##view<main<nguyen_fav_list.html.erb
##nguyen_fave_list.html.erb

<h1> Nguyen likes things! </h1>

<ul>
    <% @activities.each do |value| %>
    <li> <%= value %> </li>
    <% end %>
<ul>

##view<main<eddie_fav_list.html.erb
##eddie_fave_list.html.erb

<h1> Welcome to Eddie's favorite list!</h1>

<ul>
    <% @fav_list.each do |value| %>
    <li> <%= value %> </li>
    <% end %>
<ul>

#######################################################

##view<main<employee.html.erb
##employee.html.erb

<h1>Travel Buddies Employees</h1>
<h2> <%= link_to 'Home', '/' %> </h2>
<h3> <%= link_to 'Eddie Favorite things', '/eddies_fav_list' %> </h3>
<h3> <%= link_to 'Nguyen Favorite things', '/nguyen_fav_list' %> </h3>
<p>Heres a list of our team members</p>
<ul>
    <% @members.each do |value| %>
    <li> <%= value %> </li>
    <% end %>
<ul>

##################################################

##view<main<landing_page.html.erb>
##landing_page.html.erb

<h1>"Welcome to Travel Buddies"</h1>

<h2> <%= link_to 'Team Members', '/employees' %> </h2>

<p> Here at Travel buddies, we pride ourselves in providing the hottest itinerary for your traveling needs.  Some of the destinations include restaurants, activities, books, video games, hiking locations, beaches, doughnut shoppes, and movies.</p>
<p> param challenges </p>
<h3> <%= link_to 'cubed numbers', '/cubed' %> </h3>

##########################################################
As a user, I can visit a custom landing page at localhost:3000.<check>
As a user, I can see the names of my team members as hyperlinks on the landing page.
<check>
As a user, I can click on each team member's name and be taken to a page that displays a list of that team member's top three things. (Could be top three restaurants, activities, books, video games, hiking locations, beaches, doughnut shoppes, movies, etc.)
Params

As a user, I can visit a page called cubed that takes a number as a param and displays that number cubed.
As a user, I can visit a page called evenly that takes two numbers as params and displays whether or not the first number is evenly divisible by the second.
As a user, I can visit a page called palindrome that takes a string as a param and displays whether it is a palindrome (the same word forward and backward).
As a user, I can visit a page called madlib that takes params of a noun, verb, adjective, adverb, and displays a short silly story.
