Banking Challenge

Setup
# Create a new rails application and database

 rails new associations-valeria-app -d postgresql -T


# Create a model for owner

 rails db:create


# An owner has a name and address, and can have multiple credit cards

rails generate model Owner name:string address:string 


# Create a model for credit card

rails generate model Credit_Card number:integer expiration_date:integer owner_id:string

A credit card has a number, an expiration date, and an owner


Challenges
# Create three owners and save them in the database
apple = Owner.first
valeria = Owner.create(name: 'Valeria', address: '1233 Cool St')
jake = Owner.create(name: 'Jake', address: '3431 rad st')

# Create a credit card in the database for each owner

valeria.credit_cards.create(number: 12231, expiration_date: 1234)
jake.credit_cards.create(number: 3451, expiration_date: 34123)


# Add two more credit cards to one of the owners

apple.credit_cards.create(number: 56982, expiration_date: 9808)
apple.credit_cards.create(number: 4562, expiration_date: 0453)

Stretch Challenge
Add a credit limit to each card
Find the total credit extended to the owner with multiple credit cards