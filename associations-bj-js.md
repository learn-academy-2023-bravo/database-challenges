Setup
Create a new rails application and database
Create a model for owner
An owner has a name and address, and can have multiple credit cards
Create a model for credit card
A credit card has a number, an expiration date, and an owner


Challenges
Create three owners and save them in the database
    3.2.0 :004 > Owner.create(name: 'Jose', address: '123 main st')
  TRANSACTION (0.1ms)  BEGIN
  Owner Create (1.8ms)  INSERT INTO "owners" ("name", "address", "created_at", "updated_at") VALUES ($1, $2, $3, $4) RETURNING "id"  [["name", "Jose"], ["address", "123 main st"], ["created_at", "2023-04-14 17:10:13.829291"], ["updated_at", "2023-04-14 17:10:13.829291"]]
  TRANSACTION (0.9ms)  COMMIT
 => 
#<Owner:0x0000000105debd30
 id: 1,
 name: "Jose",
 address: "123 main st",
 created_at: Fri, 14 Apr 2023 17:10:13.829291000 UTC +00:00,
 updated_at: Fri, 14 Apr 2023 17:10:13.829291000 UTC +00:00> 
3.2.0 :005 > Owner.all
  Owner Load (0.5ms)  SELECT "owners".* FROM "owners"
 =>                                                          
[#<Owner:0x000000010624be20                                  
  id: 1,                                                     
  name: "Jose",                                              
  address: "123 main st",                                    
  created_at: Fri, 14 Apr 2023 17:10:13.829291000 UTC +00:00,
  updated_at: Fri, 14 Apr 2023 17:10:13.829291000 UTC +00:00>] 
3.2.0 :006 > Owner.create(name: 'Brandon', address: '122 alternative st')
  TRANSACTION (0.5ms)  BEGIN
  Owner Create (0.5ms)  INSERT INTO "owners" ("name", "address", "created_at", "updated_at") VALUES ($1, $2, $3, $4) RETURNING "id"  [["name", "Brandon"], ["address", "122 alternative st"], ["created_at", "2023-04-14 17:11:47.527634"], ["updated_at", "2023-04-14 17:11:47.527634"]]                        
  TRANSACTION (0.4ms)  COMMIT                                      
 =>                                                                
#<Owner:0x0000000106228ad8                                         
 id: 2,                                                            
 name: "Brandon",
 address: "122 alternative st",
 created_at: Fri, 14 Apr 2023 17:11:47.527634000 UTC +00:00,
 updated_at: Fri, 14 Apr 2023 17:11:47.527634000 UTC +00:00> 
3.2.0 :007 > Owner.create(name: 'Pippin', address: '122 story st')
  TRANSACTION (0.1ms)  BEGIN
  Owner Create (0.3ms)  INSERT INTO "owners" ("name", "address", "created_at", "updated_at") VALUES ($1, $2, $3, $4) RETURNING "id"  [["name", "Pippin"], ["address", "122 story st"], ["created_at", "2023-04-14 17:13:10.468450"], ["updated_at", "2023-04-14 17:13:10.468450"]]                                      
  TRANSACTION (0.5ms)  COMMIT                                                 
 =>                                                                           
#<Owner:0x000000010624dea0                                                    
 id: 3,                                                                       
 name: "Pippin",                                                              
 address: "122 story st",                                                     
 created_at: Fri, 14 Apr 2023 17:13:10.468450000 UTC +00:00,                  
 updated_at: Fri, 14 Apr 2023 17:13:10.468450000 UTC +00:00>                  
3.2.0 :008 > card = Owner.find(1)
  Owner Load (0.2ms)  SELECT "owners".* FROM "owners" WHERE "owners"."id" = $1 LIMIT $2  [["id", 1], ["LIMIT", 1]]                                
 =>                                                                 
#<Owner:0x00000001064f58d8 

Create a credit card in the database for each owner
3.2.0 :013 > card.credit_card.create(number:'1234567890', exp_date:'2023-04-14
')
  TRANSACTION (0.2ms)  BEGIN
  CreditCard Create (1.6ms)  INSERT INTO "credit_cards" ("number", "exp_date", "owner_id", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["number", "1234567890"], ["exp_date", "2023-04-14"], ["owner_id", 1], ["created_at", "2023-04-14 17:21:45.968612"], ["updated_at", "2023-04-14 17:21:45.968612"]]
  TRANSACTION (0.3ms)  COMMIT
 => 
#<CreditCard:0x000000010620eed0
 id: 1,
 number: "1234567890",
 exp_date: Fri, 14 Apr 2023,
 owner_id: 1,
 created_at: Fri, 14 Apr 2023 17:21:45.968612000 UTC +00:00,
 updated_at: Fri, 14 Apr 2023 17:21:45.968612000 UTC +00:00> 

 3.2.0 :016 > card.credit_card.create(number:'0987654321', exp_date:'2023-04-04
')
  TRANSACTION (0.2ms)  BEGIN
  CreditCard Create (0.5ms)  INSERT INTO "credit_cards" ("number", "exp_date", "owner_id", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["number", "0987654321"], ["exp_date", "2023-04-04"], ["owner_id", 2], ["created_at", "2023-04-14 17:25:51.750181"], ["updated_at", "2023-04-14 17:25:51.750181"]]                                                      
  TRANSACTION (0.6ms)  COMMIT                                       
 =>                                                                 
#<CreditCard:0x00000001061edd48
 id: 2,
 number: "0987654321",
 exp_date: Tue, 04 Apr 2023,
 owner_id: 2,
 created_at: Fri, 14 Apr 2023 17:25:51.750181000 UTC +00:00,
 updated_at: Fri, 14 Apr 2023 17:25:51.750181000 UTC +00:00> 

 3.2.0 :018 > card.credit_card.create(number:'5678901234', exp_date:'2021-04-04
')
  TRANSACTION (0.1ms)  BEGIN
  CreditCard Create (0.3ms)  INSERT INTO "credit_cards" ("number", "exp_date", "owner_id", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["number", "5678901234"], ["exp_date", "2021-04-04"], ["owner_id", 3], ["created_at", "2023-04-14 17:26:59.024875"], ["updated_at", "2023-04-14 17:26:59.024875"]]
  TRANSACTION (0.2ms)  COMMIT
 => 
#<CreditCard:0x0000000105fe8c00
 id: 3,
 number: "5678901234",
 exp_date: Sun, 04 Apr 2021,
 owner_id: 3,
 created_at: Fri, 14 Apr 2023 17:26:59.024875000 UTC +00:00,
 updated_at: Fri, 14 Apr 2023 17:26:59.024875000 UTC +00:00> 

Add two more credit cards to one of the owners

3.2.0 :020 > card.credit_card.create([{number:'5678901234', exp_date:'2021-04-
04'}, {number:'5432109876', exp_date:'2023-04-31'}])
  TRANSACTION (0.2ms)  BEGIN
  CreditCard Create (0.3ms)  INSERT INTO "credit_cards" ("number", "exp_date", "owner_id", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["number", "5678901234"], ["exp_date", "2021-04-04"], ["owner_id", 3], ["created_at", "2023-04-14 17:31:10.376312"], ["updated_at", "2023-04-14 17:31:10.376312"]]                            
  TRANSACTION (0.5ms)  COMMIT             
  TRANSACTION (0.1ms)  BEGIN              
  CreditCard Create (0.2ms)  INSERT INTO "credit_cards" ("number", "exp_date", "owner_id", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["number", "5432109876"], ["exp_date", nil], ["owner_id", 3], ["created_at", "2023-04-14 17:31:10.380177"], ["updated_at", "2023-04-14 17:31:10.380177"]]                                     
  TRANSACTION (0.2ms)  COMMIT             
 => 
[#<CreditCard:0x00000001064f99d8
  id: 4,
  number: "5678901234",
  exp_date: Sun, 04 Apr 2021,
  owner_id: 3,
  created_at: Fri, 14 Apr 2023 17:31:10.376312000 UTC +00:00,
  updated_at: Fri, 14 Apr 2023 17:31:10.376312000 UTC +00:00>,
 #<CreditCard:0x00000001064f9758
  id: 5,
  number: "5432109876",
  exp_date: nil,
  owner_id: 3,
  created_at: Fri, 14 Apr 2023 17:31:10.380177000 UTC +00:00,
  updated_at: Fri, 14 Apr 2023 17:31:10.380177000 UTC +00:00>] 

Stretch Challenge
Add a credit limit to each card

3.2.0 :003 > CreditCard.find(1)
  CreditCard Load (0.5ms)  SELECT "credit_cards".* FROM "credit_cards" WHERE "credit_cards"."id" = $1 LIMIT $2  [["id", 1], ["LIMIT", 1]]       
 =>                                                               
#<CreditCard:0x0000000109b56a58                                   
 id: 1,                                                           
 number: "1234567890",                                            
 exp_date: Fri, 14 Apr 2023,                                      
 owner_id: 1,                                                     
 created_at: Fri, 14 Apr 2023 17:21:45.968612000 UTC +00:00,      
 updated_at: Fri, 14 Apr 2023 18:01:29.019256000 UTC +00:00,      
 limit: 200>                                                      
3.2.0 :004 > CreditCard.update([{2, limit:300}, {3, limit:400}, {4, limit:500}
, {5, limit:600}])
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/irb-1.6.4/lib/irb/workspace.rb:113:in `eval': (irb):4: syntax error, unexpected ',', expecting => (SyntaxError)                                                                             
CreditCard.update([{2, limit:300}, {3, limit:400}, ...                        
                     ^                                                        
                                                                              
3.2.0 :005 > CreditCard.update(2, limit:300)
  CreditCard Load (0.3ms)  SELECT "credit_cards".* FROM "credit_cards" WHERE "credit_cards"."id" = $1 LIMIT $2  [["id", 2], ["LIMIT", 1]]                   
  TRANSACTION (0.1ms)  BEGIN                                                  
  Owner Load (0.2ms)  SELECT "owners".* FROM "owners" WHERE "owners"."id" = $1 LIMIT $2  [["id", 2], ["LIMIT", 1]]                                          
  CreditCard Update (0.3ms)  UPDATE "credit_cards" SET "updated_at" = $1, "limit" = $2 WHERE "credit_cards"."id" = $3  [["updated_at", "2023-04-14 18:07:28.769170"], ["limit", 300], ["id", 2]]
  TRANSACTION (0.6ms)  COMMIT
 => 
#<CreditCard:0x000000010a63a280
 id: 2,
 number: "0987654321",
 exp_date: Tue, 04 Apr 2023,
 owner_id: 2,
 created_at: Fri, 14 Apr 2023 17:25:51.750181000 UTC +00:00,
 updated_at: Fri, 14 Apr 2023 18:07:28.769170000 UTC +00:00,
 limit: 300> 
3.2.0 :006 > CreditCard.update(3, limit:300)
  CreditCard Load (0.4ms)  SELECT "credit_cards".* FROM "credit_cards" WHERE "credit_cards"."id" = $1 LIMIT $2  [["id", 3], ["LIMIT", 1]]
  TRANSACTION (0.1ms)  BEGIN
  Owner Load (0.1ms)  SELECT "owners".* FROM "owners" WHERE "owners"."id" = $1 LIMIT $2  [["id", 3], ["LIMIT", 1]]
  CreditCard Update (0.2ms)  UPDATE "credit_cards" SET "updated_at" = $1, "limit" = $2 WHERE "credit_cards"."id" = $3  [["updated_at", "2023-04-14 18:07:38.578032"], ["limit", 300], ["id", 3]]
  TRANSACTION (0.4ms)  COMMIT
 => 
#<CreditCard:0x000000010a5fdad8
 id: 3,
 number: "5678901234",
 exp_date: Sun, 04 Apr 2021,
 owner_id: 3,
 created_at: Fri, 14 Apr 2023 17:26:59.024875000 UTC +00:00,
 updated_at: Fri, 14 Apr 2023 18:07:38.578032000 UTC +00:00,
 limit: 300> 
3.2.0 :007 > CreditCard.update(4, limit:3000)
  CreditCard Load (0.3ms)  SELECT "credit_cards".* FROM "credit_cards" WHERE "credit_cards"."id" = $1 LIMIT $2  [["id", 4], ["LIMIT", 1]]
  TRANSACTION (0.1ms)  BEGIN           
  Owner Load (0.2ms)  SELECT "owners".* FROM "owners" WHERE "owners"."id" = $1 LIMIT $2  [["id", 3], ["LIMIT", 1]]
  CreditCard Update (0.5ms)  UPDATE "credit_cards" SET "updated_at" = $1, "limit" = $2 WHERE "credit_cards"."id" = $3  [["updated_at", "2023-04-14 18:07:54.181125"], ["limit", 3000], ["id", 4]]
  TRANSACTION (0.4ms)  COMMIT
 => 
#<CreditCard:0x000000010a65a008
 id: 4,
 number: "5678901234",
 exp_date: Sun, 04 Apr 2021,
 owner_id: 3,
 created_at: Fri, 14 Apr 2023 17:31:10.376312000 UTC +00:00,
 updated_at: Fri, 14 Apr 2023 18:07:54.181125000 UTC +00:00,
 limit: 3000> 
3.2.0 :008 > CreditCard.update(5, limit:30)
  CreditCard Load (0.4ms)  SELECT "credit_cards".* FROM "credit_cards" WHERE "credit_cards"."id" = $1 LIMIT $2  [["id", 5], ["LIMIT", 1]]
  TRANSACTION (0.1ms)  BEGIN
  Owner Load (0.2ms)  SELECT "owners".* FROM "owners" WHERE "owners"."id" = $1 LIMIT $2  [["id", 3], ["LIMIT", 1]]
  CreditCard Update (0.3ms)  UPDATE "credit_cards" SET "updated_at" = $1, "limit" = $2 WHERE "credit_cards"."id" = $3  [["updated_at", "2023-04-14 18:08:07.361980"], ["limit", 30], ["id", 5]]
  TRANSACTION (0.5ms)  COMMIT
 => 
#<CreditCard:0x000000010a5da290
 id: 5,
 number: "5432109876",
 exp_date: nil,
 owner_id: 3,
 created_at: Fri, 14 Apr 2023 17:31:10.380177000 UTC +00:00,
 updated_at: Fri, 14 Apr 2023 18:08:07.361980000 UTC +00:00,
 limit: 30>

Find the total credit extended to the owner with multiple credit cards
3.2.0 :010 > owner = Owner.find(3)
  Owner Load (0.4ms)  SELECT "owners".* FROM "owners" WHERE "owners"."id" = $1 LIMIT $2  [["id", 3], ["LIMIT", 1]]                                 
 =>                                                                  
#<Owner:0x0000000109bf9d98                                           
...                                                                  
3.2.0 :011 > owner
 => 
#<Owner:0x0000000109bf9d98                                           
 id: 3,                                                              
 name: "Pippin",                                                     
 address: "122 story st",                                            
 created_at: Fri, 14 Apr 2023 17:13:10.468450000 UTC +00:00,         
 updated_at: Fri, 14 Apr 2023 17:13:10.468450000 UTC +00:00>         
3.2.0 :012 > sum = owner.credit_card
  CreditCard Load (0.2ms)  SELECT "credit_cards".* FROM "credit_cards" WHERE "credit_cards"."owner_id" = $1  [["owner_id", 3]]                     
 =>                                                                  
[#<CreditCard:0x000000010a678fd0                                     
...                                                                  
3.2.0 :013 > sum = owner.credit_card.sum(:limit)
  CreditCard Sum (0.4ms)  SELECT SUM("credit_cards"."limit") FROM "credit_cards" WHERE "credit_cards"."owner_id" = $1  [["owner_id", 3]]                    
 => 3330                                                                      
3.2.0 :014 > sum
 => 3330 
3.2.0 :015 > 
                