➜  desktop cd database-challenges 
➜  database-challenges git:(main) git checkout -b active-record-jd-mn
Switched to a new branch 'active-record-jd-mn'
➜  database-challenges git:(active-record-jd-mn) rails new rolodex_challenge -d postgresql -T
➜  database-challenges git:(active-record-jd-mn) ✗ cd rolodex_challenge 
➜  rolodex_challenge git:(main) ✗ rails db:create
Created database 'rolodex_challenge_development'
Created database 'rolodex_challenge_test'
➜  rolodex_challenge git:(main) ✗ rails s
=> Booting Puma
=> Rails 7.0.4.3 application starting in development 
=> Run `bin/rails server --help` for more startup options
Puma starting in single mode...
* Puma version: 5.6.5 (ruby 3.2.0-p0) ("Birdie's Version")
*  Min threads: 5
*  Max threads: 5
*  Environment: development
*          PID: 79472
* Listening on http://127.0.0.1:3000
* Listening on http://[::1]:3000
Use Ctrl-C to stop
Started GET "/" for ::1 at 2023-04-13 11:14:49 -0700
Processing by Rails::WelcomeController#index as HTML
  Rendering /Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/railties-7.0.4.3/lib/rails/templates/rails/welcome/index.html.erb
  Rendered /Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/railties-7.0.4.3/lib/rails/templates/rails/welcome/index.html.erb (Duration: 0.9ms | Allocations: 634)
Completed 200 OK in 8ms (Views: 3.0ms | ActiveRecord: 0.0ms | Allocations: 5335)


^C- Gracefully stopping, waiting for requests to finish
=== puma shutdown: 2023-04-13 11:14:55 -0700 ===
- Goodbye!
Exiting
➜  rolodex_challenge git:(main) ✗ code .
➜  rolodex_challenge git:(main) ✗ rails generate model Rolodex person:string phone_number:integer 
      invoke  active_record
      create    db/migrate/20230413181907_create_rolodexes.rb
      create    app/models/rolodex.rb
➜  rolodex_challenge git:(main) ✗ rails db:migrate
== 20230413181907 CreateRolodexes: migrating ==================================
-- create_table(:rolodexes)
   -> 0.0051s
== 20230413181907 CreateRolodexes: migrated (0.0052s) =========================

➜  rolodex_challenge git:(main) ✗ Rolodex.all
zsh: command not found: Rolodex.all
➜  rolodex_challenge git:(main) ✗ rails c
Loading development environment (Rails 7.0.4.3)
3.2.0 :001 > Rolodex.all
  Rolodex Load (0.8ms)  SELECT "rolodexes".* FROM "rolodexes"
 => []                                                         
3.2.0 :002 > 
^C                                                                                
3.2.0 :002 > 
^C                                                                                
3.2.0 :002 > exit
➜  rolodex_challenge git:(main) ✗ rails generate model Family first_name:string last_name:string phone:integer 
      invoke  active_record
      create    db/migrate/20230413182717_create_families.rb
      create    app/models/family.rb
➜  rolodex_challenge git:(main) ✗ rails db:migrate
== 20230413182717 CreateFamilies: migrating ===================================
-- create_table(:families)
   -> 0.0097s
== 20230413182717 CreateFamilies: migrated (0.0097s) ==========================

➜  rolodex_challenge git:(main) ✗ rails c
Loading development environment (Rails 7.0.4.3)
3.2.0 :001 > Family.create(first_name:'Melissa', last_name:'Nou', phone:3244041234)
  TRANSACTION (0.1ms)  BEGIN
  TRANSACTION (0.4ms)  ROLLBACK                                                              
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activemodel-7.0.4.3/lib/active_model/type/integer.rb:52:in `ensure_in_range': 3244041234 is out of range for ActiveModel::Type::Integer with limit 4 bytes (ActiveModel::RangeError)                                                     
3.2.0 :002 > Family.all
  Family Load (1.1ms)  SELECT "families".* FROM "families"
 => []                                                                                       
3.2.0 :003 > Family.create(first_name:'Melissa', last_name:'Nou', phone:1234567)
  TRANSACTION (0.2ms)  BEGIN
  Family Create (1.7ms)  INSERT INTO "families" ("first_name", "last_name", "phone", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["first_name", "Melissa"], ["last_name", "Nou"], ["phone", 1234567], ["created_at", "2023-04-13 18:36:54.263898"], ["updated_at", "2023-04-13 18:36:54.263898"]]
  TRANSACTION (0.7ms)  COMMIT                                                                
 =>                                                                                          
#<Family:0x00000001146bb060                                                                  
 id: 1,                                                                                      
 first_name: "Melissa",                                                                      
 last_name: "Nou",                                                                           
 phone: 1234567,                                                                             
 created_at: Thu, 13 Apr 2023 18:36:54.263898000 UTC +00:00,                                 
 updated_at: Thu, 13 Apr 2023 18:36:54.263898000 UTC +00:00>                                 
3.2.0 :004 > Family.all
  Family Load (0.6ms)  SELECT "families".* FROM "families"
 =>                                                           
[#<Family:0x00000001146fce48                                  
  id: 1,                                                      
  first_name: "Melissa",                                      
  last_name: "Nou",                                           
  phone: 1234567,                                             
  created_at: Thu, 13 Apr 2023 18:36:54.263898000 UTC +00:00, 
  updated_at: Thu, 13 Apr 2023 18:36:54.263898000 UTC +00:00>] 
3.2.0 :005 > 
                      