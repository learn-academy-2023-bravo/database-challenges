Create a new rails application and database
Create a model for owner
An owner has a name and address, and can have multiple credit cards
Create a model for credit card
A credit card has a number, an expiration date, and an owner
Challenges
Create three owners and save them in the database
Create a credit card in the database for each owner
Add two more credit cards to one of the owners

[#<Owner:0x00000001053aede0                                  
  id: 1,                                                     
  name: "Eddie",                                             
  address: "fake street",                                    
  created_at: Fri, 14 Apr 2023 17:19:11.367389000 UTC +00:00,
  updated_at: Fri, 14 Apr 2023 17:19:11.367389000 UTC +00:00>,
 #<Owner:0x00000001057cb680                                  
  id: 2,                                                     
  name: "Sam",                                               
  address: "1 fake street",                                  
  created_at: Fri, 14 Apr 2023 17:19:38.994297000 UTC +00:00,
  updated_at: Fri, 14 Apr 2023 17:19:38.994297000 UTC +00:00>,
 #<Owner:0x00000001057cb0e0                                  
  id: 3,
  name: "Joe",
  address: "2 fake street",
  created_at: Fri, 14 Apr 2023 17:20:06.193251000 UTC +00:00,
  updated_at: Fri, 14 Apr 2023 17:20:06.193251000 UTC +00:00>] 
3.2.0 :002 > 

[#<Owner:0x00000001053aede0                                  
  id: 1,                                                     
  name: "Eddie",                                             
  address: "fake street",                                    
  created_at: Fri, 14 Apr 2023 17:19:11.367389000 UTC +00:00,
  updated_at: Fri, 14 Apr 2023 17:19:11.367389000 UTC +00:00>,
 #<Owner:0x00000001057cb680                                  
  id: 2,                                                     
  name: "Sam",                                               
  address: "1 fake street",                                  
  created_at: Fri, 14 Apr 2023 17:19:38.994297000 UTC +00:00,
  updated_at: Fri, 14 Apr 2023 17:19:38.994297000 UTC +00:00>,
 #<Owner:0x00000001057cb0e0                                  
  id: 3,
  name: "Joe",
  address: "2 fake street",
  created_at: Fri, 14 Apr 2023 17:20:06.193251000 UTC +00:00,
  updated_at: Fri, 14 Apr 2023 17:20:06.193251000 UTC +00:00>] 
3.2.0 :002 > CreditCard.all
  CreditCard Load (1.1ms)  SELECT "credit_cards".* FROM "credit_cards"
 =>                                                               
[#<CreditCard:0x000000010514f518                                  
  id: 1,                                                          
  number: 123456789,                                              
  expiration_date: "4/14/23",                                     
  owner_id: 1,                                                    
  created_at: Fri, 14 Apr 2023 17:29:24.547953000 UTC +00:00,     
  updated_at: Fri, 14 Apr 2023 18:12:27.959046000 UTC +00:00,     
  limit: "5,000">,                                                
 #<CreditCard:0x0000000105804930                                  
  id: 2,                                                          
  number: 123456789,                                              
  expiration_date: "4/14/23",                                     
  owner_id: 2,                                                    
  created_at: Fri, 14 Apr 2023 17:31:40.892792000 UTC +00:00,
  updated_at: Fri, 14 Apr 2023 18:14:04.888987000 UTC +00:00,
  limit: "5,000">,
 #<CreditCard:0x00000001058047f0
  id: 3,
  number: 1234567890,
  expiration_date: "4/15/23",
  owner_id: 3,
  created_at: Fri, 14 Apr 2023 17:33:06.852380000 UTC +00:00,
  updated_at: Fri, 14 Apr 2023 18:14:51.641019000 UTC +00:00,
  limit: "5,000">,
 #<CreditCard:0x0000000105804750
  id: 4,
  number: 77777777,
  expiration_date: "2/22/25",
  owner_id: 3,
  created_at: Fri, 14 Apr 2023 17:42:18.552030000 UTC +00:00,
  updated_at: Fri, 14 Apr 2023 18:16:06.013949000 UTC +00:00,
  limit: "5,000">,
 #<CreditCard:0x0000000105804610
  id: 5,
  number: 11111111,
  expiration_date: "3/3/28",
  owner_id: 1,
  created_at: Fri, 14 Apr 2023 17:43:46.037150000 UTC +00:00,
  updated_at: Fri, 14 Apr 2023 18:16:46.589235000 UTC +00:00,
  limit: "5,000">,
 #<CreditCard:0x0000000105804570
  id: 6,
  number: 333333333,
  expiration_date: "3/3/29",
  owner_id: 1,
  created_at: Fri, 14 Apr 2023 18:02:44.341290000 UTC +00:00,
  updated_at: Fri, 14 Apr 2023 18:18:25.252818000 UTC +00:00,
  limit: "5,000">] 
3.2.0 :003 > 
