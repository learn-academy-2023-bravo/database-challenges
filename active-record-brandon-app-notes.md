➜  database-challenges git:(active-record-bj-ao) ✗ rails new rolodex_challenge -d postgresql -T 

➜  database-challenges git:(active-record-bj-ao) ✗ cd rolodex_challenge 

➜  rolodex_challenge git:(main) ✗ rails db:create

Created database 'rolodex_challenge_development'
Created database 'rolodex_challenge_test'

➜  rolodex_challenge git:(main) ✗ rails generate model Person first_name:string last_name:string phone:string
      invoke  active_record
      create    db/migrate/20230413182848_create_people.rb
      create    app/models/person.rb


 rolodex_challenge git:(main) ✗ rails db:migrate
== 20230413182848 CreatePeople: migrating =====================================
-- create_table(:people)
   -> 0.2351s
== 20230413182848 CreatePeople: migrated (0.2354s) ============================


➜  rolodex_challenge git:(main) ✗ rails c