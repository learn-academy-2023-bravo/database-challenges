Banking Challenge
Setup

Create a new rails application and database

➜  Desktop rails new associations -d postgresql -T
      create  
      create  README.md
      create  Rakefile
      create  .ruby-version
      create  config.ru
      create  .gitignore
      create  .gitattributes
      create  Gemfile
         run  git init from "."
➜  Desktop cd associations 
➜  associations git:(main) ✗ rails db:create
Created database 'associations_development'
Created database 'associations_test'


Create a model for owner
An owner has a name and address, and can have multiple credit cards

➜  associations git:(main) ✗ rails g model Owner name:string address:string
      invoke  active_record
      create    db/migrate/20230414194400_create_owners.rb
      create    app/models/owner.rb
➜  associations git:(main) ✗ rails db:migrate
== 20230414194400 CreateOwners: migrating =====================================
-- create_table(:owners)
   -> 0.0070s
== 20230414194400 CreateOwners: migrated (0.0070s) ============================


Create a model for credit card
A credit card has a number, an expiration date, and an owner

➜  associations git:(main) ✗ rails g model CreditCards owner_id:integer card_number:string exp:string
[WARNING] The model name 'CreditCards' was recognized as a plural, using the singular 'CreditCard' instead. Override with --force-plural or setup custom inflection rules for this noun before running the generator.
      invoke  active_record
      create    db/migrate/20230414194554_create_credit_cards.rb
      create    app/models/credit_card.rb
➜  associations git:(main) ✗ raills db:migrate
zsh: command not found: raills
➜  associations git:(main) ✗ rails db:migrate
== 20230414194554 CreateCreditCards: migrating ================================
-- create_table(:credit_cards)
   -> 0.0043s
== 20230414194554 CreateCreditCards: migrated (0.0044s) =======================


Challenges

Create three owners and save them in the database

3.2.0 :001 > Owner.create(name: 'Wags', address: '123 ABC Lane')
  TRANSACTION (0.1ms)  BEGIN
  Owner Create (1.5ms)  INSERT INTO "owners" ("name", "address", "created_at", "updated_at") VALUES ($1, $2, $3, $4) RETURNING "id"  [["name", "Wags"], ["address", "123 ABC Lane"], ["created_at", "2023-04-14 19:51:21.425223"], ["updated_at", "2023-04-14 19:51:21.425223"]]                                                                    
  TRANSACTION (0.2ms)  COMMIT                                               
 =>                                                                         
#<Owner:0x0000000109a9ed18                                                  
 id: 1,                                                                     
 name: "Wags",                                                              
 address: "123 ABC Lane",                                                   
 created_at: Fri, 14 Apr 2023 19:51:21.425223000 UTC +00:00,                
 updated_at: Fri, 14 Apr 2023 19:51:21.425223000 UTC +00:00>                
3.2.0 :002 > Owner.create(name: 'Spencer', address: '456 DEF Lane')
  TRANSACTION (0.3ms)  BEGIN
  Owner Create (0.6ms)  INSERT INTO "owners" ("name", "address", "created_at", "updated_at") VALUES ($1, $2, $3, $4) RETURNING "id"  [["name", "Spencer"], ["address", "456 DEF Lane"], ["created_at", "2023-04-14 19:51:43.748081"], ["updated_at", "2023-04-14 19:51:43.748081"]]                                                                 
  TRANSACTION (0.9ms)  COMMIT                                               
 =>                                                                         
#<Owner:0x00000001044cc098                                                  
 id: 2,                                                                     
 name: "Spencer",                                                           
 address: "456 DEF Lane",                                                   
 created_at: Fri, 14 Apr 2023 19:51:43.748081000 UTC +00:00,                
 updated_at: Fri, 14 Apr 2023 19:51:43.748081000 UTC +00:00>                
3.2.0 :003 > Owner.create(name: 'Evelyn', address: '789 GHI Lane')
  TRANSACTION (0.3ms)  BEGIN
  Owner Create (0.5ms)  INSERT INTO "owners" ("name", "address", "created_at", "updated_at") VALUES ($1, $2, $3, $4) RETURNING "id"  [["name", "Evelyn"], ["address", "789 GHI Lane"], ["created_at", "2023-04-14 19:52:04.897972"], ["updated_at", "2023-04-14 19:52:04.897972"]]                                                            
  TRANSACTION (0.7ms)  COMMIT                                         
 =>                                                                   
#<Owner:0x0000000109d50660                                            
 id: 3,                                                               
 name: "Evelyn",                                                      
 address: "789 GHI Lane",
 created_at: Fri, 14 Apr 2023 19:52:04.897972000 UTC +00:00,
 updated_at: Fri, 14 Apr 2023 19:52:04.897972000 UTC +00:00> 
3.2.0 :004 > wags = Owner.first
  Owner Load (0.4ms)  SELECT "owners".* FROM "owners" ORDER BY "owners"."id" ASC LIMIT $1  [["LIMIT", 1]]                                                   
 =>                                                                 
#<Owner:0x0000000109d77a80                                                      
3.2.0 :005 > wags
 => 
#<Owner:0x0000000109d77a80                                          
 id: 1,                                                             
 name: "Wags",                                                      
 address: "123 ABC Lane",                                           
 created_at: Fri, 14 Apr 2023 19:51:21.425223000 UTC +00:00,        
 updated_at: Fri, 14 Apr 2023 19:51:21.425223000 UTC +00:00>        
3.2.0 :006 > spencer = Owner.second
  Owner Load (0.3ms)  SELECT "owners".* FROM "owners" ORDER BY "owners"."id" ASC LIMIT $1 OFFSET $2  [["LIMIT", 1], ["OFFSET", 1]]                             
 =>                                                                    
#<Owner:0x0000000109d77e40                                             
...                                                                    
3.2.0 :007 > spencer
 => 
#<Owner:0x0000000109d77e40                                             
 id: 2,                                                                
 name: "Spencer",                                                      
 address: "456 DEF Lane",                                              
 created_at: Fri, 14 Apr 2023 19:51:43.748081000 UTC +00:00,           
 updated_at: Fri, 14 Apr 2023 19:51:43.748081000 UTC +00:00>           
3.2.0 :008 > evelyn = Owner.third
  Owner Load (0.6ms)  SELECT "owners".* FROM "owners" ORDER BY "owners"."id" ASC LIMIT $1 OFFSET $2  [["LIMIT", 1], ["OFFSET", 2]]                            
 =>                                                                   
#<Owner:0x0000000109bd8710                                            
...                                                                   
3.2.0 :009 > evelyn
 => 
#<Owner:0x0000000109bd8710                                            
 id: 3,                                                               
 name: "Evelyn",                                                      
 address: "789 GHI Lane",                                             
 created_at: Fri, 14 Apr 2023 19:52:04.897972000 UTC +00:00,          
 updated_at: Fri, 14 Apr 2023 19:52:04.897972000 UTC +00:00>  


Create a credit card in the database for each owner
         
3.2.0 :010 > wags.credit_cards.create(card_number: '1234567891234567')
  TRANSACTION (0.1ms)  BEGIN
  CreditCard Create (0.9ms)  INSERT INTO "credit_cards" ("owner_id", "card_number", "exp", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["owner_id", 1], ["card_number", "1234567891234567"], ["exp", nil], ["created_at", "2023-04-14 19:55:39.975530"], ["updated_at", "2023-04-14 19:55:39.975530"]]    
  TRANSACTION (0.1ms)  COMMIT                                  
 =>                                                            
#<CreditCard:0x0000000109098828                                
 id: 1,                                                        
 owner_id: 1,                                                  
 card_number: "1234567891234567",                              
 exp: nil,                                                     
 created_at: Fri, 14 Apr 2023 19:55:39.975530000 UTC +00:00,   
 updated_at: Fri, 14 Apr 2023 19:55:39.975530000 UTC +00:00>   
3.2.0 :011 > spencer.credit_cards.create(card_number: '8906754321345678')
  TRANSACTION (0.3ms)  BEGIN
  CreditCard Create (0.5ms)  INSERT INTO "credit_cards" ("owner_id", "card_number", "exp", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["owner_id", 2], ["card_number", "8906754321345678"], ["exp", nil], ["created_at", "2023-04-14 19:57:10.614739"], ["updated_at", "2023-04-14 19:57:10.614739"]]
  TRANSACTION (1.3ms)  COMMIT           
 =>                                     
#<CreditCard:0x0000000109d73d40         
 id: 2,                                 
 owner_id: 2,                           
 card_number: "8906754321345678",       
 exp: nil,                              
 created_at: Fri, 14 Apr 2023 19:57:10.614739000 UTC +00:00,
 updated_at: Fri, 14 Apr 2023 19:57:10.614739000 UTC +00:00> 
3.2.0 :012 > evelyn.credit_cards.create(card_number: '1234567993098762')
  TRANSACTION (0.3ms)  BEGIN
  CreditCard Create (0.4ms)  INSERT INTO "credit_cards" ("owner_id", "card_number", "exp", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["owner_id", 3], ["card_number", "1234567993098762"], ["exp", nil], ["created_at", "2023-04-14 19:57:41.013960"], ["updated_at", "2023-04-14 19:57:41.013960"]]
  TRANSACTION (0.7ms)  COMMIT           
 =>                                     
#<CreditCard:0x0000000109d5a160         
 id: 3,                                 
 owner_id: 3,                           
 card_number: "1234567993098762",       
 exp: nil,                              
 created_at: Fri, 14 Apr 2023 19:57:41.013960000 UTC +00:00,
 updated_at: Fri, 14 Apr 2023 19:57:41.013960000 UTC +00:00>                                                              
 
 
 Add two more credit cards to one of the owners

3.2.0 :017 > CreditCard.all
  id: 3,
  owner_id: 3,
  card_number: "1234567993098762",
  exp: nil,
  created_at: Fri, 14 Apr 2023 19:57:41.013960000 UTC +00:00,
  updated_at: Fri, 14 Apr 2023 19:57:41.013960000 UTC +00:00>,
 #<CreditCard:0x0000000109bdcd10
  id: 4,
  owner_id: 3,
  card_number: "2087654253972562",
  exp: nil,
  created_at: Fri, 14 Apr 2023 19:58:28.404901000 UTC +00:00,
  updated_at: Fri, 14 Apr 2023 19:58:28.404901000 UTC +00:00>,
 #<CreditCard:0x0000000109bdcbd0
  id: 5,
  owner_id: 3,
  card_number: "76352419876514322",
  exp: nil,
  created_at: Fri, 14 Apr 2023 19:58:58.815265000 UTC +00:00,
  updated_at: Fri, 14 Apr 2023 19:58:58.815265000 UTC +00:00>



Stretch Challenge
Add a credit limit to each card
Find the total credit extended to the owner with multiple credit cards

<!-- owner.rb file looks like this -->
<!-- class Owner < ApplicationRecord
  has_many :credit_cards
end -->

<!-- credit_card.rb file looks like this -->
<!-- class CreditCard < ApplicationRecord
  belongs_to :owner
end
 -->

<!-- schema.rb file looks like this -->
<!-- ActiveRecord::Schema[7.0].define(version: 2023_04_14_194554) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "credit_cards", force: :cascade do |t|
    t.integer "owner_id"
    t.string "card_number"
    t.string "exp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "owners", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end -->