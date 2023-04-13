Challenge: Rolodex
As a developer, I have been tasked with creating a database model that will be used in a rolodex application. I want to ensure that the database behaves as expected and the necessary actions can be performed on the database instances.

Set Up

Create a new Rails app named 'rolodex_challenge'.

➜  Desktop cd rolodex_challenge 

Create the database. The output in the terminal should look like this:
Created database 'rolodex_development'
Created database 'rolodex_test'
Loading development environment (Rails 7.0.4.3)


Generate a model called Person with a first_name, last_name, and phone. All fields should be strings.

➜ rails generate model Person(first_name: 'string', last_name: 'string', phone: 'string')

Run a migration to set up the database.

➜  rolodex_challenge git:(main) ✗ rails db:migrate

Open up Rails console.

➜  rolodex_challenge git:(main) ✗ rails c

Actions
Add five family members into the Person table in the Rails console.

3.2.0 :001 > Person.create(first_name: 'Rachael', last_name: 'Alvarez', phone: '
123-456-7890')
  TRANSACTION (0.2ms)  BEGIN
  Person Create (2.1ms)  INSERT INTO "people" ("first_name", "last_name", "phone", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["first_name", "Rachael"], ["last_name", "Alvarez"], ["phone", "123-456-7890"], ["created_at", "2023-04-13 22:00:33.705480"], ["updated_at", "2023-04-13 22:00:33.705480"]]                                                      TRANSACTION (1.5ms)  COMMIT                                                   
 =>                                                             #<Person:0x00000001115f87c0                                    id: 1,                                                                         
 first_name: "Rachael",                                                         
 last_name: "Alvarez",                                                          
 phone: "123-456-7890",                                                         
 created_at: Thu, 13 Apr 2023 22:00:33.705480000 UTC +00:00,                    
 updated_at: Thu, 13 Apr 2023 22:00:33.705480000 UTC +00:00> 

3.2.0 :002 > Person.create(first_name: 'Charlean', last_name: 'Baxter', phone: '
124-678-9012')
  TRANSACTION (0.2ms)  BEGIN
  Person Create (0.4ms)  INSERT INTO "people" ("first_name", "last_name", "phone", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["first_name", "Charlean"], ["last_name", "Baxter"], ["phone", "124-678-9012"], ["created_at", "2023-04-13 22:02:35.185905"], ["updated_at", "2023-04-13 22:02:35.185905"]]                                                      TRANSACTION (0.5ms)  COMMIT                                                   
 =>                                                       #<Person:0x0000000115f55788                                     id: 2,                                                                         
 first_name: "Charlean",                                                        
 last_name: "Baxter",                                                           
 phone: "124-678-9012",                                                         
 created_at: Thu, 13 Apr 2023 22:02:35.185905000 UTC +00:00,                    
 updated_at: Thu, 13 Apr 2023 22:02:35.185905000 UTC +00:00> 

3.2.0 :003 > Person.create(first_name: 'Tricia', last_name: 'Sykes', phone: '345
-278-9014')
  TRANSACTION (0.2ms)  BEGIN
  Person Create (0.3ms)  INSERT INTO "people" ("first_name", "last_name", "phone", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["first_name", "Tricia"], ["last_name", "Sykes"], ["phone", "345-278-9014"], ["created_at", "2023-04-13 22:03:25.749667"], ["updated_at", "2023-04-13 22:03:25.749667"]]                                                      TRANSACTION (0.5ms)  COMMIT                                                   
 =>                                                           
#<Person:0x00000001134da148                                      id: 3,                                                                         
 first_name: "Tricia",                                                          
 last_name: "Sykes",                                                            
 phone: "345-278-9014",                                                         
 created_at: Thu, 13 Apr 2023 22:03:25.749667000 UTC +00:00,                    
 updated_at: Thu, 13 Apr 2023 22:03:25.749667000 UTC +00:00> 

3.2.0 :004 > Person.create(first_name: 'Will', last_name: 'Williams', phone: '23
4-567-3901')
  TRANSACTION (0.1ms)  BEGIN
  Person Create (0.3ms)  INSERT INTO "people" ("first_name", "last_name", "phone", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["first_name", "Will"], ["last_name", "Williams"], ["phone", "234-567-3901"], ["created_at", "2023-04-13 22:04:23.830445"], ["updated_at", "2023-04-13 22:04:23.830445"]]                                                     TRANSACTION (0.4ms)  COMMIT                                                   
 =>                                                           #<Person:0x0000000115f7a790                                     id: 4,                                                                         
 first_name: "Will",                                                            
 last_name: "Williams",                                                         
 phone: "234-567-3901",                                                         
 created_at: Thu, 13 Apr 2023 22:04:23.830445000 UTC +00:00,                    
 updated_at: Thu, 13 Apr 2023 22:04:23.830445000 UTC +00:00> 

3.2.0 :005 > Person.create(first_name: 'Sarah', last_name: 'Proctor', phone: '45
3-789-3465')
  TRANSACTION (0.2ms)  BEGIN
  Person Create (0.3ms)  INSERT INTO "people" ("first_name", "last_name", "phone", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["first_name", "Sarah"], ["last_name", "Proctor"], ["phone", "453-789-3465"], ["created_at", "2023-04-13 22:05:22.191242"], ["updated_at", "2023-04-13 22:05:22.191242"]]                                                      TRANSACTION (0.6ms)  COMMIT                                                   
 =>                                                           #<Person:0x0000000115e38850                                    id: 5,                                                                         
 first_name: "Sarah",                                                           
 last_name: "Proctor",                                                          
 phone: "453-789-3465",                                                         
 created_at: Thu, 13 Apr 2023 22:05:22.191242000 UTC +00:00,                    
 updated_at: Thu, 13 Apr 2023 22:05:22.191242000 UTC +00:00> 
 

Retrieve all the items in the database.

3.2.0 :006 > Person.all
  Person Load (0.4ms)  SELECT "people".* FROM "people"
 =>                                                           
[#<Person:0x0000000115fdc940                                  
  id: 1,                                                      
  first_name: "Rachael",                                      
  last_name: "Alvarez",                                       
  phone: "123-456-7890",                                      
  created_at: Thu, 13 Apr 2023 22:00:33.705480000 UTC +00:00, 
  updated_at: Thu, 13 Apr 2023 22:00:33.705480000 UTC +00:00>,
 #<Person:0x0000000115fdc800                                  
  id: 2,                                                      
  first_name: "Charlean",                                     
  last_name: "Baxter",                                        
  phone: "124-678-9012",                                      
  created_at: Thu, 13 Apr 2023 22:02:35.185905000 UTC +00:00, 
  updated_at: Thu, 13 Apr 2023 22:02:35.185905000 UTC +00:00>,
 #<Person:0x0000000115fdc6c0
  id: 3,
  first_name: "Tricia",
  last_name: "Sykes",
  phone: "345-278-9014",
  created_at: Thu, 13 Apr 2023 22:03:25.749667000 UTC +00:00,
  updated_at: Thu, 13 Apr 2023 22:03:25.749667000 UTC +00:00>,
 #<Person:0x0000000115fdc580
  id: 4,
  first_name: "Will",
  last_name: "Williams",
  phone: "234-567-3901",
  created_at: Thu, 13 Apr 2023 22:04:23.830445000 UTC +00:00,
  updated_at: Thu, 13 Apr 2023 22:04:23.830445000 UTC +00:00>,
 #<Person:0x0000000115fdc440
  id: 5,
  first_name: "Sarah",
  last_name: "Proctor",
  phone: "453-789-3465",
  created_at: Thu, 13 Apr 2023 22:05:22.191242000 UTC +00:00,
  updated_at: Thu, 13 Apr 2023 22:05:22.191242000 UTC +00:00>] 
3.2.0 :007 >

Add yourself to the Person table.

3.2.0 :007 > Person.create(first_name: 'Evelyn', last_name: 'Alvarez', phone: '3
45-789-6543')
  TRANSACTION (0.2ms)  BEGIN
  Person Create (0.3ms)  INSERT INTO "people" ("first_name", "last_name", "phone", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["first_name", "Evelyn"], ["last_name", "Alvarez"], ["phone", "345-789-6543"], ["created_at", "2023-04-13 22:08:34.153195"], ["updated_at", "2023-04-13 22:08:34.153195"]]                                                     TRANSACTION (0.4ms)  COMMIT                                                   
 =>                                                           #<Person:0x0000000115e16e08                                     id: 6,                                                                         
 first_name: "Evelyn",                                                          
 last_name: "Alvarez",                                                          
 phone: "345-789-6543",                                                         
 created_at: Thu, 13 Apr 2023 22:08:34.153195000 UTC +00:00,                    
 updated_at: Thu, 13 Apr 2023 22:08:34.153195000 UTC +00:00> 

Retrieve all the entries that have the same last_name as you.

3.2.0 :008 > Person.find(6)
  Person Load (0.3ms)  SELECT "people".* FROM "people" WHERE "people"."id" = $1 LIMIT $2  [["id", 6], ["LIMIT", 1]]                           
 =>                                                           
#<Person:0x0000000115d7a148                                   
 id: 6,                                                       
 first_name: "Evelyn",                                        
 last_name: "Alvarez",                                        
 phone: "345-789-6543",                                       
 created_at: Thu, 13 Apr 2023 22:08:34.153195000 UTC +00:00,  
 updated_at: Thu, 13 Apr 2023 22:08:34.153195000 UTC +00:00>  

3.2.0 :009 > Person.where(last_name: 'Alvarez')
  Person Load (0.2ms)  SELECT "people".* FROM "people" WHERE "people"."last_name" = $1  [["last_name", "Alvarez"]]                            
 =>                                                           
[#<Person:0x0000000115f9fc98                                  
  id: 1,                                                      
  first_name: "Rachael",                                      
  last_name: "Alvarez",                                       
  phone: "123-456-7890",                                      
  created_at: Thu, 13 Apr 2023 22:00:33.705480000 UTC +00:00, 
  updated_at: Thu, 13 Apr 2023 22:00:33.705480000 UTC +00:00>,
 #<Person:0x0000000115f9fb58                                  
  id: 6,                                                      
  first_name: "Evelyn",                                       
  last_name: "Alvarez",                                       
  phone: "345-789-6543",                                      
  created_at: Thu, 13 Apr 2023 22:08:34.153195000 UTC +00:00,
  updated_at: Thu, 13 Apr 2023 22:08:34.153195000 UTC +00:00>] 


Update the phone number of the last entry in the database.

  3.2.0 :010 > Person.find(6)
  Person Load (0.4ms)  SELECT "people".* FROM "people" WHERE "people"."id" = $1 LIMIT $2  [["id", 6], ["LIMIT", 1]]                           
 =>                                                           
#<Person:0x0000000115d7e748                                   
 id: 6,                                                       
 first_name: "Evelyn",                                        
 last_name: "Alvarez",                                        
 phone: "345-789-6543",                                       
 created_at: Thu, 13 Apr 2023 22:08:34.153195000 UTC +00:00,  
 updated_at: Thu, 13 Apr 2023 22:08:34.153195000 UTC +00:00>  
                                  

3.2.0 :012 > entry = Person.last
  Person Load (0.2ms)  SELECT "people".* FROM "people" ORDER BY "people"."id" DESC LIMIT $1  [["LIMIT", 1]]                                           
 =>                                                           #<Person:0x0000000115d7bf48                                    
 ...                                                                   
3.2.0 :013 > entry.update(phone: '567-890-6432')
  TRANSACTION (0.1ms)  BEGIN
  Person Update (1.7ms)  UPDATE "people" SET "phone" = $1, "updated_at" = $2 WHERE "people"."id" = $3  [["phone", "567-890-6432"], ["updated_at", "2023-04-13 22:16:11.309428"], ["id", 6]]                                           
  TRANSACTION (0.3ms)  COMMIT                                         
 => true 

 3.2.0 :014 > Person.find 6
  Person Load (0.4ms)  SELECT "people".* FROM "people" WHERE "people"."id" = $1 LIMIT $2  [["id", 6], ["LIMIT", 1]]                                   
 =>                                                           
#<Person:0x0000000115d74748                                   
 id: 6,                                                       
 first_name: "Evelyn",                                        
 last_name: "Alvarez",                                        
 phone: "567-890-6432",                                       
 created_at: Thu, 13 Apr 2023 22:08:34.153195000 UTC +00:00,  
 updated_at: Thu, 13 Apr 2023 22:16:11.309428000 UTC +00:00>

Retrieve the first_name of the third Person in the database.

3.2.0 :015 > Person.find 3
  Person Load (0.3ms)  SELECT "people".* FROM "people" WHERE "people"."id" = $1 LIMIT $2  [["id", 3], ["LIMIT", 1]]                           
 =>                                                           
#<Person:0x0000000115d79748                                   
 id: 3,                                                       
 first_name: "Tricia",                                        
 last_name: "Sykes",                                          
 phone: "345-278-9014",                                       
 created_at: Thu, 13 Apr 2023 22:03:25.749667000 UTC +00:00,  
 updated_at: Thu, 13 Apr 2023 22:03:25.749667000 UTC +00:00> 

 3.2.0 :017 > third = Person.third
  Person Load (0.2ms)  SELECT "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1 OFFSET $2  [["LIMIT", 1], ["OFFSET", 2]]                   
 =>                                                            #<Person:0x0000000115d7ec48                                  
 ...  

 3.2.0 :030 > third.first_name
 => "Tricia" 


Stretch Challenges
Update all the family members with the same last_name as you, to have the same phone number as you.

Remove all family members that do not have your last_name.





                                                             



                               
