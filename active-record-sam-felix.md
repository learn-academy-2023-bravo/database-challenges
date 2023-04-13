790  git clone https://github.com/learn-academy-2023-bravo/database-challenges.git
791  git cd database-challenges
792  cd database-challenges
793  git checkout -b active-record-ss-fl
794  touch active-record-sam-felix
795  code .
796  rails new rolodex_challenge -d postgresql -T
797  cd rolodex_challenge
798  code .
799  history
  800  rails db:create
  801  rails server
  802  rails generate model Person first_name:string last_name:string phone:string
  803  rails db:migrate
804  rails c

Person.create(first_name:'Sam', last_name:'Saenz', phone:'619-333-3
333')
  TRANSACTION (0.1ms)  BEGIN
  Person Create (1.9ms)  INSERT INTO "people" ("first_name", "last_name", "phone", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["first_name", "Sam"], ["last_name", "Saenz"], ["phone", "619-333-3333"], ["created_at", "2023-04-13 18:30:04.740726"], ["updated_at", "2023-04-13 18:30:04.740726"]]                                                                               
  TRANSACTION (0.3ms)  COMMIT                                                   
 =>                                                                             
#<Person:0x0000000109b688c0                                                     
 id: 1,                                                                         
 first_name: "Sam",                                                             
 last_name: "Saenz",                                                            
 phone: "619-333-3333",                                                         
 created_at: Thu, 13 Apr 2023 18:30:04.740726000 UTC +00:00,                    
 updated_at: Thu, 13 Apr 2023 18:30:04.740726000 UTC +00:00> 

3.2.0 :002 > Person.create(first_name:'Felix', last_name:'Lopez', phone:'619-333
-3334')
  TRANSACTION (0.2ms)  BEGIN
  Person Create (0.3ms)  INSERT INTO "people" ("first_name", "last_name", "phone", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["first_name", "Felix"], ["last_name", "Lopez"], ["phone", "619-333-3334"], ["created_at", "2023-04-13 18:30:49.897827"], ["updated_at", "2023-04-13 18:30:49.897827"]]
  TRANSACTION (0.5ms)  COMMIT
 => 
#<Person:0x0000000109d0c6e0
 id: 2,
 first_name: "Felix",
 last_name: "Lopez",
 phone: "619-333-3334",
 created_at: Thu, 13 Apr 2023 18:30:49.897827000 UTC +00:00,
 updated_at: Thu, 13 Apr 2023 18:30:49.897827000 UTC +00:00>
3.2.0 :003 > Person.create(first_name:'Jose', last_name:'Salas', phone:'619-333-
3335')
  TRANSACTION (0.2ms)  BEGIN
  Person Create (0.3ms)  INSERT INTO "people" ("first_name", "last_name", "phone", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["first_name", "Jose"], ["last_name", "Salas"], ["phone", "619-333-3335"], ["created_at", "2023-04-13 18:31:36.321004"], ["updated_at", "2023-04-13 18:31:36.321004"]]
  TRANSACTION (0.5ms)  COMMIT
 => 
#<Person:0x0000000109e68340
 id: 3,
 first_name: "Jose",
 last_name: "Salas",
 phone: "619-333-3335",
 created_at: Thu, 13 Apr 2023 18:31:36.321004000 UTC +00:00,
 updated_at: Thu, 13 Apr 2023 18:31:36.321004000 UTC +00:00> 
3.2.0 :004 > Person.create(first_name:'Nguyen', last_name:'Nguyen', phone:'619-3
33-3336')
  TRANSACTION (0.2ms)  BEGIN
  Person Create (0.4ms)  INSERT INTO "people" ("first_name", "last_name", "phone", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["first_name", "Nguyen"], ["last_name", "Nguyen"], ["phone", "619-333-3336"], ["created_at", "2023-04-13 18:32:04.975461"], ["updated_at", "2023-04-13 18:32:04.975461"]]
  TRANSACTION (0.5ms)  COMMIT
 => 
#<Person:0x0000000109101918
 id: 4,
 first_name: "Nguyen",
 last_name: "Nguyen",
 phone: "619-333-3336",
 created_at: Thu, 13 Apr 2023 18:32:04.975461000 UTC +00:00,
 updated_at: Thu, 13 Apr 2023 18:32:04.975461000 UTC +00:00> 
3.2.0 :005 > Person.create(first_name:'Mark', last_name:'Nou', phone:'619-333-33
37')
  TRANSACTION (0.2ms)  BEGIN
  Person Create (0.3ms)  INSERT INTO "people" ("first_name", "last_name", "phone", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["first_name", "Mark"], ["last_name", "Nou"], ["phone", "619-333-3337"], ["created_at", "2023-04-13 18:32:29.316086"], ["updated_at", "2023-04-13 18:32:29.316086"]]
  TRANSACTION (0.5ms)  COMMIT
 => 
#<Person:0x0000000109dc6b80
 id: 5,
 first_name: "Mark",
 last_name: "Nou",
 phone: "619-333-3337",
 created_at: Thu, 13 Apr 2023 18:32:29.316086000 UTC +00:00,
 updated_at: Thu, 13 Apr 2023 18:32:29.316086000 UTC +00:00> 
3.2.0 :006 > Person.all
  Person Load (0.4ms)  SELECT "people".* FROM "people"
 =>                                                           
[#<Person:0x0000000109d4eec8                                  
  id: 1,                                                      
  first_name: "Sam",                                          
  last_name: "Saenz",                                         
  phone: "619-333-3333",                                      
  created_at: Thu, 13 Apr 2023 18:30:04.740726000 UTC +00:00, 
  updated_at: Thu, 13 Apr 2023 18:30:04.740726000 UTC +00:00>,
 #<Person:0x0000000109d4ed88                                  
  id: 2,                                                      
  first_name: "Felix",                                        
  last_name: "Lopez",                                         
  phone: "619-333-3334",                                      
  created_at: Thu, 13 Apr 2023 18:30:49.897827000 UTC +00:00, 
  updated_at: Thu, 13 Apr 2023 18:30:49.897827000 UTC +00:00>,
 #<Person:0x0000000109d4ec48
  id: 3,
  first_name: "Jose",
  last_name: "Salas",
  phone: "619-333-3335",
  created_at: Thu, 13 Apr 2023 18:31:36.321004000 UTC +00:00,
  updated_at: Thu, 13 Apr 2023 18:31:36.321004000 UTC +00:00>,
 #<Person:0x0000000109d4eb08
  id: 4,
  first_name: "Nguyen",
  last_name: "Nguyen",
  phone: "619-333-3336",
  created_at: Thu, 13 Apr 2023 18:32:04.975461000 UTC +00:00,
  updated_at: Thu, 13 Apr 2023 18:32:04.975461000 UTC +00:00>,
 #<Person:0x0000000109d4e9c8
  id: 5,
  first_name: "Mark",
  last_name: "Nou",
  phone: "619-333-3337",
  created_at: Thu, 13 Apr 2023 18:32:29.316086000 UTC +00:00,
  updated_at: Thu, 13 Apr 2023 18:32:29.316086000 UTC +00:00>] 
3.2.0 :007 > Person.create(first_name:'Kim', last_name:'Saenz', phone:'619-333-3
338')
  TRANSACTION (0.2ms)  BEGIN
  Person Create (0.3ms)  INSERT INTO "people" ("first_name", "last_name", "phone", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["first_name", "Kim"], ["last_name", "Saenz"], ["phone", "619-333-3338"], ["created_at", "2023-04-13 18:33:38.775250"], ["updated_at", "2023-04-13 18:33:38.775250"]]
  TRANSACTION (0.4ms)  COMMIT
 => 
#<Person:0x0000000109d8c818
 id: 6,
 first_name: "Kim",
 last_name: "Saenz",
 phone: "619-333-3338",
 created_at: Thu, 13 Apr 2023 18:33:38.775250000 UTC +00:00,
 updated_at: Thu, 13 Apr 2023 18:33:38.775250000 UTC +00:00> 
3.2.0 :008 > Person.where last_name:'Saenz'
  Person Load (0.2ms)  SELECT "people".* FROM "people" WHERE "people"."last_name" = $1  [["last_name", "Saenz"]]                              
 =>                                                           
[#<Person:0x0000000109f48710                                  
  id: 1,                                                      
  first_name: "Sam",                                          
  last_name: "Saenz",                                         
  phone: "619-333-3333",                                      
  created_at: Thu, 13 Apr 2023 18:30:04.740726000 UTC +00:00, 
  updated_at: Thu, 13 Apr 2023 18:30:04.740726000 UTC +00:00>,
 #<Person:0x0000000109f485d0                                  
  id: 6,                                                      
  first_name: "Kim",                                          
  last_name: "Saenz",                                         
  phone: "619-333-3338",                                      
  created_at: Thu, 13 Apr 2023 18:33:38.775250000 UTC +00:00,
  updated_at: Thu, 13 Apr 2023 18:33:38.775250000 UTC +00:00>] 
3.2.0 :009 > kim = Person.find 6
  Person Load (0.3ms)  SELECT "people".* FROM "people" WHERE "people"."id" = $1 LIMIT $2  [["id", 6], ["LIMIT", 1]]                                 
 =>                                                                 
#<Person:0x0000000109d4ac88                                         
...                                                                 
3.2.0 :010 > kim.phone = '619-555-5555'
 => "619-555-5555" 
3.2.0 :011 > kim.save
  TRANSACTION (0.2ms)  BEGIN
  Person Update (1.2ms)  UPDATE "people" SET "phone" = $1, "updated_at" = $2 WHERE "people"."id" = $3  [["phone", "619-555-5555"], ["updated_at", "2023-04-13 18:36:57.142316"], ["id", 6]]                                         
  TRANSACTION (0.3ms)  COMMIT                                       
 => true                             

