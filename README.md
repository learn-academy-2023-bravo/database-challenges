Last login: Thu Apr 13 18:09:03 on ttys001
➜  ~ cd desktop
➜  desktop cd database-challenges
➜  database-challenges git:(migration-dw-ec) git checkout main
Switched to branch 'main'
Your branch is up to date with 'origin/main'.
➜  database-challenges git:(main) git checkout -b associations-dw-jd
Switched to a new branch 'associations-dw-jd'
➜  database-challenges git:(associations-dw-jd) ls
README.md                          database-queries-evelyn-spencer.md
➜  database-challenges git:(associations-dw-jd) ls   
README.md
➜  database-challenges git:(associations-dw-jd) ✗ rails new Bank -d postgresql -T
      create  
      create  README.md
      create  Rakefile
      create  .ruby-version
      create  config.ru
      create  .gitignore
      create  .gitattributes
      create  Gemfile
         run  git init from "."
hint: Using 'master' as the name for the initial branch. This default branch name
hint: is subject to change. To configure the initial branch name to use in all
hint: of your new repositories, which will suppress this warning, call:
hint: 
hint: 	git config --global init.defaultBranch <name>
hint: 
hint: Names commonly chosen instead of 'master' are 'main', 'trunk' and
hint: 'development'. The just-created branch can be renamed via this command:
hint: 
hint: 	git branch -m <name>
Initialized empty Git repository in /Users/learnacademy/Desktop/database-challenges/Bank/.git/
      create  app
      create  app/assets/config/manifest.js
      create  app/assets/stylesheets/application.css
      create  app/channels/application_cable/channel.rb
      create  app/channels/application_cable/connection.rb
      create  app/controllers/application_controller.rb
      create  app/helpers/application_helper.rb
      create  app/jobs/application_job.rb
      create  app/mailers/application_mailer.rb
      create  app/models/application_record.rb
      create  app/views/layouts/application.html.erb
      create  app/views/layouts/mailer.html.erb
      create  app/views/layouts/mailer.text.erb
      create  app/assets/images
      create  app/assets/images/.keep
      create  app/controllers/concerns/.keep
      create  app/models/concerns/.keep
      create  bin
      create  bin/rails
      create  bin/rake
      create  bin/setup
      create  config
      create  config/routes.rb
      create  config/application.rb
      create  config/environment.rb
      create  config/cable.yml
      create  config/puma.rb
      create  config/storage.yml
      create  config/environments
      create  config/environments/development.rb
      create  config/environments/production.rb
      create  config/environments/test.rb
      create  config/initializers
      create  config/initializers/assets.rb
      create  config/initializers/content_security_policy.rb
      create  config/initializers/cors.rb
      create  config/initializers/filter_parameter_logging.rb
      create  config/initializers/inflections.rb
      create  config/initializers/new_framework_defaults_7_0.rb
      create  config/initializers/permissions_policy.rb
      create  config/locales
      create  config/locales/en.yml
      create  config/master.key
      append  .gitignore
      create  config/boot.rb
      create  config/database.yml
      create  db
      create  db/seeds.rb
      create  lib
      create  lib/tasks
      create  lib/tasks/.keep
      create  lib/assets
      create  lib/assets/.keep
      create  log
      create  log/.keep
      create  public
      create  public/404.html
      create  public/422.html
      create  public/500.html
      create  public/apple-touch-icon-precomposed.png
      create  public/apple-touch-icon.png
      create  public/favicon.ico
      create  public/robots.txt
      create  tmp
      create  tmp/.keep
      create  tmp/pids
      create  tmp/pids/.keep
      create  tmp/cache
      create  tmp/cache/assets
      create  vendor
      create  vendor/.keep
      create  storage
      create  storage/.keep
      create  tmp/storage
      create  tmp/storage/.keep
      remove  config/initializers/cors.rb
      remove  config/initializers/new_framework_defaults_7_0.rb
         run  bundle install
Fetching gem metadata from https://rubygems.org/...........
Resolving dependencies...
Using rake 13.0.6
Using minitest 5.18.0
Using racc 1.6.2
Using concurrent-ruby 1.2.2
Using crass 1.0.6
Using erubi 1.12.0
Using builder 3.2.4
Using websocket-extensions 0.1.5
Using nio4r 2.5.9
Using date 3.3.3
Using marcel 1.0.2
Using timeout 0.3.2
Using mini_mime 1.1.2
Using bindex 0.8.1
Using bundler 2.4.11
Using io-console 0.6.0
Using rack 2.2.6.4
Using thor 1.2.1
Using method_source 1.0.0
Using pg 1.4.6
Using i18n 1.12.0
Using zeitwerk 2.6.7
Using tzinfo 2.0.6
Using nokogiri 1.14.3 (x86_64-darwin)
Using net-protocol 0.2.1
Using websocket-driver 0.7.5
Using puma 5.6.5
Using msgpack 1.7.0
Using sprockets 4.2.0
Using reline 0.3.3
Using rack-test 2.1.0
Using activesupport 7.0.4.3
Using loofah 2.20.0
Using net-imap 0.3.4
Using net-pop 0.1.2
Using net-smtp 0.3.3
Using rails-dom-testing 2.0.3
Using irb 1.6.4
Using bootsnap 1.16.0
Using activemodel 7.0.4.3
Using debug 1.7.2
Using globalid 1.1.0
Using activerecord 7.0.4.3
Using mail 2.8.1
Using rails-html-sanitizer 1.5.0
Using activejob 7.0.4.3
Using actionview 7.0.4.3
Using actionpack 7.0.4.3
Using jbuilder 2.11.5
Using activestorage 7.0.4.3
Using sprockets-rails 3.4.2
Using actionmailbox 7.0.4.3
Using actiontext 7.0.4.3
Using actionmailer 7.0.4.3
Using railties 7.0.4.3
Using actioncable 7.0.4.3
Using rails 7.0.4.3
Using turbo-rails 1.4.0
Using web-console 4.2.0
Using stimulus-rails 1.2.1
Using importmap-rails 1.1.5
Bundle complete! 12 Gemfile dependencies, 61 gems now installed.
Use `bundle info [gemname]` to see where a bundled gem is installed.
         run  bundle binstubs bundler
       rails  importmap:install
Add Importmap include tags in application layout
      insert  app/views/layouts/application.html.erb
Create application.js module as entrypoint
      create  app/javascript/application.js
Use vendor/javascript for downloaded pins
      create  vendor/javascript
      create  vendor/javascript/.keep
Ensure JavaScript files are in the Sprocket manifest
      append  app/assets/config/manifest.js
Configure importmap paths in config/importmap.rb
      create  config/importmap.rb
Copying binstub
      create  bin/importmap
       rails  turbo:install stimulus:install
Import Turbo
      append  app/javascript/application.js
Pin Turbo
      append  config/importmap.rb
Run turbo:install:redis to switch on Redis and use it in development for turbo streams
Create controllers directory
      create  app/javascript/controllers
      create  app/javascript/controllers/index.js
      create  app/javascript/controllers/application.js
      create  app/javascript/controllers/hello_controller.js
Import Stimulus controllers
      append  app/javascript/application.js
Pin Stimulus
Appending: pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true"
      append  config/importmap.rb
Appending: pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
      append  config/importmap.rb
Pin all controllers
Appending: pin_all_from "app/javascript/controllers", under: "controllers"
      append  config/importmap.rb
➜  database-challenges git:(associations-dw-jd) ✗ cd Bank
➜  Bank git:(main) ✗ rails db:create
Created database 'Bank_development'
Created database 'Bank_test'
➜  Bank git:(main) ✗ rails server
=> Booting Puma
=> Rails 7.0.4.3 application starting in development 
=> Run `bin/rails server --help` for more startup options
Puma starting in single mode...
* Puma version: 5.6.5 (ruby 3.2.0-p0) ("Birdie's Version")
*  Min threads: 5
*  Max threads: 5
*  Environment: development
*          PID: 38432
* Listening on http://127.0.0.1:3000
* Listening on http://[::1]:3000
Use Ctrl-C to stop
Started GET "/" for 127.0.0.1 at 2023-04-14 13:07:56 -0400
Processing by Rails::WelcomeController#index as HTML
  Rendering /Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/railties-7.0.4.3/lib/rails/templates/rails/welcome/index.html.erb
  Rendered /Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/railties-7.0.4.3/lib/rails/templates/rails/welcome/index.html.erb (Duration: 6.1ms | Allocations: 634)
Completed 200 OK in 85ms (Views: 27.5ms | ActiveRecord: 0.0ms | Allocations: 5335)


^C- Gracefully stopping, waiting for requests to finish
=== puma shutdown: 2023-04-14 13:08:19 -0400 ===
- Goodbye!
Exiting
➜  Bank git:(main) ✗ rails generate model Owner name:string address:string credit_card:string
      invoke  active_record
      create    db/migrate/20230414171440_create_owners.rb
      create    app/models/owner.rb
➜  Bank git:(main) ✗ rails generate model CreditCard number:string expiration_date:date owner:string
      invoke  active_record
      create    db/migrate/20230414171709_create_credit_cards.rb
      create    app/models/credit_card.rb
➜  Bank git:(main) ✗ rails db:migrate
== 20230414171440 CreateOwners: migrating =====================================
-- create_table(:owners)
   -> 0.0331s
== 20230414171440 CreateOwners: migrated (0.0331s) ============================

== 20230414171709 CreateCreditCards: migrating ================================
-- create_table(:credit_cards)
   -> 0.0077s
== 20230414171709 CreateCreditCards: migrated (0.0078s) =======================

➜  Bank git:(main) ✗ code .
➜  Bank git:(main) ✗ rails c
Loading development environment (Rails 7.0.4.3)
3.2.0 :001 > Owner.create(name:'Jake', address:'123 Street')
  TRANSACTION (0.2ms)  BEGIN
  Owner Create (2.0ms)  INSERT INTO "owners" ("name", "address", "credit_card", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["name", "Jake"], ["address", "123 Street"], ["credit_card", nil], ["created_at", "2023-04-14 17:25:55.632843"], ["updated_at", "2023-04-14 17:25:55.632843"]]                                                     
  TRANSACTION (0.7ms)  COMMIT                                                 
 =>                                                                           
#<Owner:0x0000000113d51538                                                    
 id: 1,                                                                       
 name: "Jake",                                                                
 address: "123 Street",                                                       
 credit_card: nil,                                                            
 created_at: Fri, 14 Apr 2023 17:25:55.632843000 UTC +00:00,                  
 updated_at: Fri, 14 Apr 2023 17:25:55.632843000 UTC +00:00>                  
3.2.0 :002 > Owner.find(1).credit_card.create number:'900405060', date:2023-04-14, owner_id:1 
  Owner Load (0.3ms)  SELECT "owners".* FROM "owners" WHERE "owners"."id" = $1 LIMIT $2  [["id", 1], ["LIMIT", 1]]
(irb):2:in `<main>': undefined method `create' for nil:NilClass (NoMethodError)             
                                                                                            
Owner.find(1).credit_card.create number:'900405060', date:2023-04-14, owner_id:1         
                         ^^^^^^^                                                         
3.2.0 :003 > jake = Owner.first
  Owner Load (0.4ms)  SELECT "owners".* FROM "owners" ORDER BY "owners"."id" ASC LIMIT $1  [["LIMIT", 1]]
 =>                                                                                      
#<Owner:0x00000001157da508                                                               
...                                                                                      
3.2.0 :004 > jake.credit_cards.create number:'9080706050', expiration_date:2023-04-13, owner_id:1
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activemodel-7.0.4.3/lib/active_model/attribute_assignment.rb:51:in `_assign_attribute': unknown attribute 'owner_id' for CreditCard. (ActiveModel::UnknownAttributeError)                        
                                                                                                
          raise UnknownAttributeError.new(self, k.to_s)                   
          ^^^^^                                                           
3.2.0 :005 > jake.credit_cards.create number:'9080706050', expiration_date:2023-04-13, owner:1
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activerecord-7.0.4.3/lib/active_record/associations/association.rb:299:in `raise_on_type_mismatch!': Owner(#17040) expected, got 1 which is an instance of Integer(#1980) (ActiveRecord::AssociationTypeMismatch)
3.2.0 :006 > Owner.all
  Owner Load (8.2ms)  SELECT "owners".* FROM "owners"
 =>                                                                       
[#<Owner:0x00000001158bb418                                               
  id: 1,                                                                  
  name: "Jake",                                                           
  address: "123 Street",                                       
  credit_card: nil,                                          
  created_at: Fri, 14 Apr 2023 17:25:55.632843000 UTC +00:00,
  updated_at: Fri, 14 Apr 2023 17:25:55.632843000 UTC +00:00>] 
3.2.0 :007 > jake.credit_cards.create number:'9080706050', expiration_date:2023-04-13
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activemodel-7.0.4.3/lib/active_model/attribute_assignment.rb:51:in `_assign_attribute': unknown attribute 'owner_id' for CreditCard. (ActiveModel::UnknownAttributeError)                        
                                                                                                
          raise UnknownAttributeError.new(self, k.to_s)      
          ^^^^^                                              
3.2.0 :008 > exit
➜  Bank git:(main) ✗ rails c
Loading development environment (Rails 7.0.4.3)
3.2.0 :001 > jake.credit_cards.create number:'9080706050', expiration_date:2023-04-13
(irb):1:in `<main>': undefined local variable or method `jake' for main:Object (NameError)
                  
jake.credit_cards.create number:'9080706050', expiration_date:2023-04-13
^^^^
3.2.0 :002 > Owner.all
  Owner Load (0.9ms)  SELECT "owners".* FROM "owners"
 =>                                                 
[#<Owner:0x000000010b9a1990                         
  id: 1,
  name: "Jake",
  address: "123 Street",
  credit_card: nil,
  created_at: Fri, 14 Apr 2023 17:25:55.632843000 UTC +00:00,
  updated_at: Fri, 14 Apr 2023 17:25:55.632843000 UTC +00:00>] 
3.2.0 :003 > jake = Owner.first
  Owner Load (0.5ms)  SELECT "owners".* FROM "owners" ORDER BY "owners"."id" ASC LIMIT $1  [["LIMIT", 1]]
 =>                                                 
#<Owner:0x000000010cbc21d8                          
...                                          
3.2.0 :004 > jake.credit_cards.create number:'9080706050', expiration_date:2023-04-13
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activemodel-7.0.4.3/lib/active_model/attribute_assignment.rb:51:in `_assign_attribute': unknown attribute 'owner_id' for CreditCard. (ActiveModel::UnknownAttributeError)
                                                    
          raise UnknownAttributeError.new(self, k.to_s)
          ^^^^^                              
3.2.0 :005 > jake.credit_cards.create number:'9080706050', expiration_date:2023-04-13
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activemodel-7.0.4.3/lib/active_model/attribute_assignment.rb:51:in `_assign_attribute': unknown attribute 'owner_id' for CreditCard. (ActiveModel::UnknownAttributeError)

          raise UnknownAttributeError.new(self, k.to_s)
          ^^^^^
3.2.0 :006 > jake.credit_cards.create number:'9080706050', expiration_date:2023-04-13
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activemodel-7.0.4.3/lib/active_model/attribute_assignment.rb:51:in `_assign_attribute': unknown attribute 'owner_id' for CreditCard. (ActiveModel::UnknownAttributeError)

          raise UnknownAttributeError.new(self, k.to_s)
          ^^^^^
3.2.0 :007 > jake.credit_cards.create number:'9080706050', expiration_date:2023-04-13
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activemodel-7.0.4.3/lib/active_model/attribute_assignment.rb:51:in `_assign_attribute': unknown attribute 'owner_id' for CreditCard. (ActiveModel::UnknownAttributeError)

          raise UnknownAttributeError.new(self, k.to_s)
          ^^^^^
3.2.0 :008 > jake.credit_cards.create number:'9080706050', expiration_date:2023-04-13
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activemodel-7.0.4.3/lib/active_model/attribute_assignment.rb:51:in `_assign_attribute': unknown attribute 'owner_id' for CreditCard. (ActiveModel::UnknownAttributeError)

          raise UnknownAttributeError.new(self, k.to_s)
          ^^^^^
3.2.0 :009 > exit
➜  Bank git:(main) ✗ rails c
Loading development environment (Rails 7.0.4.3)
3.2.0 :001 > jake = Owner.first
  Owner Load (0.7ms)  SELECT "owners".* FROM "owners" ORDER BY "owners"."id" ASC LIMIT $1  [["LIMIT", 1]]                                                 
 =>                                                                 
#<Owner:0x00000001146f4108                                          
...                                                                 
3.2.0 :002 > jake.credit_cards.create number:'9080706050', expiration_date:2023-04-13
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activemodel-7.0.4.3/lib/active_model/attribute_assignment.rb:51:in `_assign_attribute': unknown attribute 'owner_id' for CreditCard. (ActiveModel::UnknownAttributeError)                         
                                                                    
          raise UnknownAttributeError.new(self, k.to_s)             
          ^^^^^                                                     
3.2.0 :003 > exit
➜  Bank git:(main) ✗ rails generate migration remove_owner_column
      invoke  active_record
      create    db/migrate/20230414180819_remove_owner_column.rb
➜  Bank git:(main) ✗ rails db:migrate
== 20230414180819 RemoveOwnerColumn: migrating ================================
-- remove_column(:owners, :credit_card)
   -> 0.0329s
== 20230414180819 RemoveOwnerColumn: migrated (0.0330s) =======================

➜  Bank git:(main) ✗ rails c
Loading development environment (Rails 7.0.4.3)
3.2.0 :001 > Owners.all
(irb):1:in `<main>': uninitialized constant Owners (NameError)
                                                                          
Owners.all                                                                
^^^^^^                                                                    
3.2.0 :002 > Owner.all
  Owner Load (1.1ms)  SELECT "owners".* FROM "owners"
 =>                                                                       
[#<Owner:0x0000000105169508                                               
  id: 1,                                                                  
  name: "Jake",                                                           
  address: "123 Street",                                                  
  created_at: Fri, 14 Apr 2023 17:25:55.632843000 UTC +00:00,             
  updated_at: Fri, 14 Apr 2023 17:25:55.632843000 UTC +00:00>]            
3.2.0 :003 > exit
➜  Bank git:(main) ✗ rails generate migration remove_credit_card_column
      invoke  active_record
      create    db/migrate/20230414181539_remove_credit_card_column.rb
➜  Bank git:(main) ✗ rails db:migrate
== 20230414181539 RemoveCreditCardColumn: migrating ===========================
-- remove_column(:credit_cards, :owner)
   -> 0.0031s
== 20230414181539 RemoveCreditCardColumn: migrated (0.0032s) ==================

➜  Bank git:(main) ✗ rails generate migration add_credit_cards_column
      invoke  active_record
      create    db/migrate/20230414181803_add_credit_cards_column.rb
➜  Bank git:(main) ✗ rails db:migrate
== 20230414181803 AddCreditCardsColumn: migrating =============================
-- add_column(:credit_cards, :owner_id, :integer)
   -> 0.0033s
== 20230414181803 AddCreditCardsColumn: migrated (0.0034s) ====================

➜  Bank git:(main) ✗ rails
The most common rails commands are:
 generate     Generate new code (short-cut alias: "g")
 console      Start the Rails console (short-cut alias: "c")
 server       Start the Rails server (short-cut alias: "s")
 test         Run tests except system tests (short-cut alias: "t")
 test:system  Run system tests
 dbconsole    Start a console for the database specified in config/database.yml
              (short-cut alias: "db")
 new          Create a new Rails application. "rails new my_app" creates a
              new application called MyApp in "./my_app"
 plugin new   Create a new Rails railtie or engine

All commands can be run with -h (or --help) for more information.
In addition to those commands, there are:

  about
  action_mailbox:ingress:exim
  action_mailbox:ingress:postfix
  action_mailbox:ingress:qmail
  action_mailbox:install
  action_mailbox:install:migrations
  action_text:install
  action_text:install:migrations
  active_storage:install
  app:template
  app:update
  assets:clean[keep]
  assets:clobber
  assets:environment
  assets:precompile
  cache_digests:dependencies
  cache_digests:nested_dependencies
  credentials:diff
  credentials:edit
  credentials:show
  db:create
  db:drop
  db:encryption:init
  db:environment:set
  db:fixtures:load
  db:migrate
  db:migrate:down
  db:migrate:redo
  db:migrate:status
  db:migrate:up
  db:prepare
  db:reset
  db:rollback
  db:schema:cache:clear
  db:schema:cache:dump
  db:schema:dump
  db:schema:load
  db:seed
  db:seed:replant
  db:setup
  db:system:change
  db:version
  destroy
  dev:cache
  encrypted:edit
  encrypted:show
  importmap:install
  initializers
  log:clear
  middleware
  notes
  restart
  routes
  runner
  secret
  secrets:edit
  secrets:setup
  secrets:show
  stats
  stimulus:install
  stimulus:install:importmap
  stimulus:install:node
  time:zones[country_or_offset]
  tmp:clear
  tmp:create
  turbo:install
  turbo:install:importmap
  turbo:install:node
  turbo:install:redis
  version
  yarn:install
  zeitwerk:check
➜  Bank git:(main) ✗ rails c
Loading development environment (Rails 7.0.4.3)
3.2.0 :001 > Owner.all
  Owner Load (0.9ms)  SELECT "owners".* FROM "owners"
 =>                                                          
[#<Owner:0x000000010fbfcfd8                                  
  id: 1,                                                     
  name: "Jake",                                              
  address: "123 Street",                                     
  created_at: Fri, 14 Apr 2023 17:25:55.632843000 UTC +00:00,
  updated_at: Fri, 14 Apr 2023 17:25:55.632843000 UTC +00:00>] 
3.2.0 :002 > jake = Owner.first
  Owner Load (0.3ms)  SELECT "owners".* FROM "owners" ORDER BY "owners"."id" ASC LIMIT $1  [["LIMIT", 1]]                                 
 =>                                                                 
#<Owner:0x0000000110079c50                                          
...                                                                 
3.2.0 :003 > jake.credit_cards.create number:'9080706050', expiration_
date:2023-04-13 
  TRANSACTION (13.9ms)  BEGIN
  CreditCard Create (1.8ms)  INSERT INTO "credit_cards" ("number", "expiration_date", "created_at", "updated_at", "owner_id") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["number", "9080706050"], ["expiration_date", 2006], ["created_at", "2023-04-14 18:28:58.463826"], ["updated_at", "2023-04-14 18:28:58.463826"], ["owner_id", 1]]                  
  TRANSACTION (0.2ms)  ROLLBACK                                       
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activerecord-7.0.4.3/lib/active_record/connection_adapters/postgresql_adapter.rb:768:in `exec_params': PG::InvalidDatetimeFormat: ERROR:  invalid input syntax for type date: "2006" (ActiveRecord::StatementInvalid)                     
CONTEXT:  unnamed portal parameter $2 = '...'                         
                                                                      
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activerecord-7.0.4.3/lib/active_record/connection_adapters/postgresql_adapter.rb:768:in `exec_params': ERROR:  invalid input syntax for type date: "2006" (PG::InvalidDatetimeFormat)
CONTEXT:  unnamed portal parameter $2 = '...'

3.2.0 :004 > Owner.create(name:'DeMario', address:'500 Boulevard')
3.2.0 :005 >   
  TRANSACTION (0.3ms)  BEGIN
  Owner Create (0.6ms)  INSERT INTO "owners" ("name", "address", "created_at", "updated_at") VALUES ($1, $2, $3, $4) RETURNING "id"  [["name", "DeMario"], ["address", "500 Boulevard"], ["created_at", "2023-04-14 18:31:07.477973"], ["updated_at", "2023-04-14 18:31:07.477973"]]
  TRANSACTION (0.9ms)  COMMIT                                     
 =>                                                               
#<Owner:0x00000001108bfbf8                                        
 id: 2,                                                           
 name: "DeMario",                                                 
 address: "500 Boulevard",                                        
 created_at: Fri, 14 Apr 2023 18:31:07.477973000 UTC +00:00, 
 updated_at: Fri, 14 Apr 2023 18:31:07.477973000 UTC +00:00> 
3.2.0 :006 > Owner.create(name:'John', address:'499 Boulevard')
3.2.0 :007 >   
  TRANSACTION (0.2ms)  BEGIN
  Owner Create (0.7ms)  INSERT INTO "owners" ("name", "address", "created_at", "updated_at") VALUES ($1, $2, $3, $4) RETURNING "id"  [["name", "John"], ["address", "499 Boulevard"], ["created_at", "2023-04-14 18:31:34.323928"], ["updated_at", "2023-04-14 18:31:34.323928"]]
  TRANSACTION (0.5ms)  COMMIT
 => 
#<Owner:0x00000001109f3d58
 id: 3,
 name: "John",
 address: "499 Boulevard",
 created_at: Fri, 14 Apr 2023 18:31:34.323928000 UTC +00:00,
 updated_at: Fri, 14 Apr 2023 18:31:34.323928000 UTC +00:00> 
3.2.0 :008 > Owner.all
  Owner Load (0.6ms)  SELECT "owners".* FROM "owners"
 =>                                                          
[#<Owner:0x0000000110a5b548                                  
  id: 1,                                                     
  name: "Jake",                                              
  address: "123 Street",                                     
  created_at: Fri, 14 Apr 2023 17:25:55.632843000 UTC +00:00,
  updated_at: Fri, 14 Apr 2023 17:25:55.632843000 UTC +00:00>,
 #<Owner:0x0000000110a5b408                                  
  id: 2,                                                     
  name: "DeMario",                                           
  address: "500 Boulevard",                                  
  created_at: Fri, 14 Apr 2023 18:31:07.477973000 UTC +00:00,
  updated_at: Fri, 14 Apr 2023 18:31:07.477973000 UTC +00:00>,
 #<Owner:0x0000000110a5b2c8                                  
  id: 3,
  name: "John",
  address: "499 Boulevard",
  created_at: Fri, 14 Apr 2023 18:31:34.323928000 UTC +00:00,
  updated_at: Fri, 14 Apr 2023 18:31:34.323928000 UTC +00:00>] 
3.2.0 :009 > CreditCard.all
  CreditCard Load (2.3ms)  SELECT "credit_cards".* FROM "credit_cards"
 => []                                                            
3.2.0 :010 > Owner.credit_cards
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activerecord-7.0.4.3/lib/active_record/dynamic_matchers.rb:22:in `method_missing': undefined method `credit_cards' for Owner:Class (NoMethodError)              
3.2.0 :011 > Owner.credit_card
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activerecord-7.0.4.3/lib/active_record/dynamic_matchers.rb:22:in `method_missing': undefined method `credit_card' for Owner:Class (NoMethodError)               
3.2.0 :012 > Owner.CreditCard
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activerecord-7.0.4.3/lib/active_record/dynamic_matchers.rb:22:in `method_missing': undefined method `CreditCard' for Owner:Class (NoMethodError)                
3.2.0 :013 > jake.credit_cards
  CreditCard Load (0.4ms)  SELECT "credit_cards".* FROM "credit_cards" WHERE "credit_cards"."owner_id" = $1  [["owner_id", 1]]       
 => []                                                         
3.2.0 :014 > exit
➜  Bank git:(main) ✗ rails db:migrate
➜  Bank git:(main) ✗ rails c         
Loading development environment (Rails 7.0.4.3)
3.2.0 :001 > Owner.first.credit_cards
  Owner Load (0.5ms)  SELECT "owners".* FROM "owners" ORDER BY "owners"."id" ASC LIMIT $1  [["LIMIT", 1]]                          
  CreditCard Load (0.5ms)  SELECT "credit_cards".* FROM "credit_cards" WHERE "credit_cards"."owner_id" = $1  [["owner_id", 1]]     
 => []                                                       
3.2.0 :002 > CreditCard.find(1)
  CreditCard Load (0.6ms)  SELECT "credit_cards".* FROM "credit_cards" WHERE "credit_cards"."id" = $1 LIMIT $2  [["id", 1], ["LIMIT", 1]]
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activerecord-7.0.4.3/lib/active_record/core.rb:284:in `find': Couldn't find CreditCard with 'id'=1 (ActiveRecord::RecordNotFound)                               
3.2.0 :003 > CreditCard.all
  CreditCard Load (0.4ms)  SELECT "credit_cards".* FROM "credit_cards"
 => []                                                            
3.2.0 :004 > exit
➜  Bank git:(main) ✗ rails db:migrate
➜  Bank git:(main) ✗ rails c
Loading development environment (Rails 7.0.4.3)
3.2.0 :001 > CreditCard.all
  CreditCard Load (1.1ms)  SELECT "credit_cards".* FROM "credit_cards"
 => []                                                   
3.2.0 :002 > jake = Owner.first
  Owner Load (0.5ms)  SELECT "owners".* FROM "owners" ORDER BY "owners"."id" ASC LIMIT $1  [["LIMIT", 1]]                      
 =>                                                      
#<Owner:0x00000001099cd9e8                          
...                                          
3.2.0 :003 > jake.credit_cards.create number:'9080706050', expiration_
date:2023-04-13 
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activemodel-7.0.4.3/lib/active_model/attribute_methods.rb:458:in `method_missing': undefined method `credit_cards' for #<Owner id: 1, name: "Jake", address: "123 Street", created_at: "2023-04-14 17:25:55.632843000 +0000", updated_at: "2023-04-14 17:25:55.632843000 +0000"> (NoMethodError)
Did you mean?  CreditCards
3.2.0 :004 > jake.CreditCards.create number:'9080706050', expiration_d
ate:2023-04-13 
  TRANSACTION (18.5ms)  BEGIN
  CreditCard Create (1.2ms)  INSERT INTO "credit_cards" ("number", "expiration_date", "created_at", "updated_at", "owner_id") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["number", "9080706050"], ["expiration_date", 2006], ["created_at", "2023-04-14 18:41:38.490673"], ["updated_at", "2023-04-14 18:41:38.490673"], ["owner_id", 1]]          
  TRANSACTION (0.1ms)  ROLLBACK                               
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activerecord-7.0.4.3/lib/active_record/connection_adapters/postgresql_adapter.rb:768:in `exec_params': PG::InvalidDatetimeFormat: ERROR:  invalid input syntax for type date: "2006" (ActiveRecord::StatementInvalid)             
CONTEXT:  unnamed portal parameter $2 = '...'                 
                                                              
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activerecord-7.0.4.3/lib/active_record/connection_adapters/postgresql_adapter.rb:768:in `exec_params': ERROR:  invalid input syntax for type date: "2006" (PG::InvalidDatetimeFormat)
CONTEXT:  unnamed portal parameter $2 = '...'

3.2.0 :005 > CreditCard.all
  CreditCard Load (19.6ms)  SELECT "credit_cards".* FROM "credit_cards"                                                        
 => []                                                   
3.2.0 :006 > jake = Owner.first
  Owner Load (20.8ms)  SELECT "owners".* FROM "owners" ORDER BY "owners"."id" ASC LIMIT $1  [["LIMIT", 1]]                     
 =>                                                      
#<Owner:0x00000001096a28b8                   
...                                          
3.2.0 :007 > jake.CreditCards
  CreditCard Load (0.3ms)  SELECT "credit_cards".* FROM "credit_cards" WHERE "credit_cards"."owner_id" = $1  [["owner_id", 1]]            
 => []                                                              
3.2.0 :008 > jake.CreditCard
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activemodel-7.0.4.3/lib/active_model/attribute_methods.rb:458:in `method_missing': undefined method `CreditCard' for #<Owner id: 1, name: "Jake", address: "123 Street", created_at: "2023-04-14 17:25:55.632843000 +0000", updated_at: "2023-04-14 17:25:55.632843000 +0000"> (NoMethodError)                
Did you mean?  CreditCards                                          
3.2.0 :009 > exit
➜  Bank git:(main) ✗ rails db:migrate
➜  Bank git:(main) ✗ rails c         
Loading development environment (Rails 7.0.4.3)
3.2.0 :001 > jake = Owner.first
  Owner Load (0.9ms)  SELECT "owners".* FROM "owners" ORDER BY "owners"."id" ASC LIMIT $1  [["LIMIT", 1]]          
 =>                                          
#<Owner:0x000000010956b5a8                   
...                                          
3.2.0 :002 > jake.credit_cards
  CreditCard Load (0.8ms)  SELECT "credit_cards".* FROM "credit_cards" WHERE "credit_cards"."owner_id" = $1  [["owner_id", 1]]              
 => []                                                                
3.2.0 :003 > jake.credit_cards.create number:'9080706050', expiration_
date:2023-04-13 
  TRANSACTION (2.6ms)  BEGIN
  CreditCard Create (1.9ms)  INSERT INTO "credit_cards" ("number", "expiration_date", "created_at", "updated_at", "owner_id") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["number", "9080706050"], ["expiration_date", 2006], ["created_at", "2023-04-14 18:47:20.597955"], ["updated_at", "2023-04-14 18:47:20.597955"], ["owner_id", 1]]                  
  TRANSACTION (0.5ms)  ROLLBACK                                       
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activerecord-7.0.4.3/lib/active_record/connection_adapters/postgresql_adapter.rb:768:in `exec_params': PG::InvalidDatetimeFormat: ERROR:  invalid input syntax for type date: "2006" (ActiveRecord::StatementInvalid)
CONTEXT:  unnamed portal parameter $2 = '...'

/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activerecord-7.0.4.3/lib/active_record/connection_adapters/postgresql_adapter.rb:768:in `exec_params': ERROR:  invalid input syntax for type date: "2006" (PG::InvalidDatetimeFormat)
CONTEXT:  unnamed portal parameter $2 = '...'

3.2.0 :004 > jake.credit_cards.create number:'9080706050', expiration_
date:20230413 
  TRANSACTION (0.2ms)  BEGIN
  CreditCard Create (1.2ms)  INSERT INTO "credit_cards" ("number", "expiration_date", "created_at", "updated_at", "owner_id") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["number", "9080706050"], ["expiration_date", 20230413], ["created_at", "2023-04-14 18:49:38.404552"], ["updated_at", "2023-04-14 18:49:38.404552"], ["owner_id", 1]]
  TRANSACTION (0.9ms)  COMMIT
 => 
#<CreditCard:0x00000001048094e0
 id: 1,
 number: "9080706050",
 expiration_date: 20230413,
 created_at: Fri, 14 Apr 2023 18:49:38.404552000 UTC +00:00,
 updated_at: Fri, 14 Apr 2023 18:49:38.404552000 UTC +00:00,
 owner_id: 1> 
3.2.0 :005 > jake.credit_cards
 => 
[#<CreditCard:0x00000001048094e0                               
  id: 1,                                                       
  number: "9080706050",                                        
  expiration_date: 20230413,                                   
  created_at: Fri, 14 Apr 2023 18:49:38.404552000 UTC +00:00,  
  updated_at: Fri, 14 Apr 2023 18:49:38.404552000 UTC +00:00,  
  owner_id: 1>]                                                
3.2.0 :006 > Owners.all
(irb):6:in `<main>': uninitialized constant Owners (NameError)
                                                               
Owners.all                                                     
^^^^^^                                                         
3.2.0 :007 > Owner.all
  Owner Load (12.6ms)  SELECT "owners".* FROM "owners"
 => 
[#<Owner:0x000000010928d0c0
  id: 1,
  name: "Jake",
  address: "123 Street",
  created_at: Fri, 14 Apr 2023 17:25:55.632843000 UTC +00:00,
  updated_at: Fri, 14 Apr 2023 17:25:55.632843000 UTC +00:00>,
 #<Owner:0x000000010928d020
  id: 2,
  name: "DeMario",
  address: "500 Boulevard",
  created_at: Fri, 14 Apr 2023 18:31:07.477973000 UTC +00:00,
  updated_at: Fri, 14 Apr 2023 18:31:07.477973000 UTC +00:00>,
 #<Owner:0x000000010928cf80
  id: 3,
  name: "John",
  address: "499 Boulevard",
  created_at: Fri, 14 Apr 2023 18:31:34.323928000 UTC +00:00,
  updated_at: Fri, 14 Apr 2023 18:31:34.323928000 UTC +00:00>] 
3.2.0 :008 > demario = Owner.find(2)
  Owner Load (0.4ms)  SELECT "owners".* FROM "owners" WHERE "owners"."id" = $1 LIMIT $2  [["id", 2], ["LIMIT", 1]]                          
 =>                                                                   
#<Owner:0x0000000109dc7a80                                            
...                                                                   
3.2.0 :009 > demario.credit_cards.create number:'43785634875', expirat
ion_date:20250909
  TRANSACTION (7.9ms)  BEGIN
  CreditCard Create (0.5ms)  INSERT INTO "credit_cards" ("number", "expiration_date", "created_at", "updated_at", "owner_id") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["number", "43785634875"], ["expiration_date", 20250909], ["created_at", "2023-04-14 18:52:01.536164"], ["updated_at", "2023-04-14 18:52:01.536164"], ["owner_id", 2]]             
  TRANSACTION (0.5ms)  COMMIT                                         
 =>                                                                   
#<CreditCard:0x00000001097a1b88                                       
 id: 2,                                                               
 number: "43785634875",                                               
 expiration_date: 20250909,                                           
 created_at: Fri, 14 Apr 2023 18:52:01.536164000 UTC +00:00,          
 updated_at: Fri, 14 Apr 2023 18:52:01.536164000 UTC +00:00,      
 owner_id: 2> 
3.2.0 :010 > CreditCard.all
  CreditCard Load (17.6ms)  SELECT "credit_cards".* FROM "credit_cards"                                                                 
 =>                                                               
[#<CreditCard:0x0000000109cee4d8                                  
  id: 1,                                                          
  number: "9080706050",                                           
  expiration_date: Thu, 13 Apr 2023,                              
  created_at: Fri, 14 Apr 2023 18:49:38.404552000 UTC +00:00,     
  updated_at: Fri, 14 Apr 2023 18:49:38.404552000 UTC +00:00,     
  owner_id: 1>,                                                   
 #<CreditCard:0x0000000109cee398                                  
  id: 2,                                                          
  number: "43785634875",                                          
  expiration_date: Tue, 09 Sep 2025,                              
  created_at: Fri, 14 Apr 2023 18:52:01.536164000 UTC +00:00,     
  updated_at: Fri, 14 Apr 2023 18:52:01.536164000 UTC +00:00,
  owner_id: 2>] 
3.2.0 :011 > Owner.all
  Owner Load (14.3ms)  SELECT "owners".* FROM "owners"
 =>                                                      
[#<Owner:0x000000010a076a60                              
  id: 1,
  name: "Jake",
  address: "123 Street",
  created_at: Fri, 14 Apr 2023 17:25:55.632843000 UTC +00:00,
  updated_at: Fri, 14 Apr 2023 17:25:55.632843000 UTC +00:00>,
 #<Owner:0x000000010a0769c0
  id: 2,
  name: "DeMario",
  address: "500 Boulevard",
  created_at: Fri, 14 Apr 2023 18:31:07.477973000 UTC +00:00,
  updated_at: Fri, 14 Apr 2023 18:31:07.477973000 UTC +00:00>,
 #<Owner:0x000000010a076920
  id: 3,
  name: "John",
  address: "499 Boulevard",
  created_at: Fri, 14 Apr 2023 18:31:34.323928000 UTC +00:00,
  updated_at: Fri, 14 Apr 2023 18:31:34.323928000 UTC +00:00>] 
3.2.0 :012 > john = Owner.find(3)
  Owner Load (7.9ms)  SELECT "owners".* FROM "owners" WHERE "owners"."id" = $1 LIMIT $2  [["id", 3], ["LIMIT", 1]]                        
 =>                                                                 
#<Owner:0x0000000109dcfb40                                          
...                                                                 
3.2.0 :013 > john.credit_cards.create number:'65732485647', expiration
_date:20201212
  TRANSACTION (0.2ms)  BEGIN
  CreditCard Create (0.4ms)  INSERT INTO "credit_cards" ("number", "expiration_date", "created_at", "updated_at", "owner_id") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["number", "65732485647"], ["expiration_date", 20201212], ["created_at", "2023-04-14 18:53:42.904999"], ["updated_at", "2023-04-14 18:53:42.904999"], ["owner_id", 3]]             
  TRANSACTION (0.8ms)  COMMIT                                         
 =>                                                                   
#<CreditCard:0x0000000109ae7f90                                       
 id: 3,                                                               
 number: "65732485647",                                               
 expiration_date: 20201212,                                           
 created_at: Fri, 14 Apr 2023 18:53:42.904999000 UTC +00:00,          
 updated_at: Fri, 14 Apr 2023 18:53:42.904999000 UTC +00:00,   
 owner_id: 3> 
3.2.0 :014 > john.credit_cards.create number:'65474672647', expiration
_date:20201211
  TRANSACTION (18.3ms)  BEGIN
  CreditCard Create (0.6ms)  INSERT INTO "credit_cards" ("number", "expiration_date", "created_at", "updated_at", "owner_id") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["number", "65474672647"], ["expiration_date", 20201211], ["created_at", "2023-04-14 18:53:59.372761"], ["updated_at", "2023-04-14 18:53:59.372761"], ["owner_id", 3]]
  TRANSACTION (0.8ms)  COMMIT
 => 
#<CreditCard:0x000000010a131900
 id: 4,
 number: "65474672647",
 expiration_date: 20201211,
 created_at: Fri, 14 Apr 2023 18:53:59.372761000 UTC +00:00,
 updated_at: Fri, 14 Apr 2023 18:53:59.372761000 UTC +00:00,
 owner_id: 3> 
3.2.0 :015 > CreditCard.all
  CreditCard Load (0.4ms)  SELECT "credit_cards".* FROM "credit_cards"
 =>                                                               
[#<CreditCard:0x0000000109ceb7d8                                  
  id: 1,                                                          
  number: "9080706050",                                           
  expiration_date: Thu, 13 Apr 2023,                              
  created_at: Fri, 14 Apr 2023 18:49:38.404552000 UTC +00:00,     
  updated_at: Fri, 14 Apr 2023 18:49:38.404552000 UTC +00:00,     
  owner_id: 1>,                                                   
 #<CreditCard:0x0000000109ceb698                                  
  id: 2,                                                          
  number: "43785634875",                                          
  expiration_date: Tue, 09 Sep 2025,                              
  created_at: Fri, 14 Apr 2023 18:52:01.536164000 UTC +00:00,     
  updated_at: Fri, 14 Apr 2023 18:52:01.536164000 UTC +00:00,     
  owner_id: 2>,
 #<CreditCard:0x0000000109ceb558
  id: 3,
  number: "65732485647",
  expiration_date: Sat, 12 Dec 2020,
  created_at: Fri, 14 Apr 2023 18:53:42.904999000 UTC +00:00,
  updated_at: Fri, 14 Apr 2023 18:53:42.904999000 UTC +00:00,
  owner_id: 3>,
 #<CreditCard:0x0000000109ceb418
  id: 4,
  number: "65474672647",
  expiration_date: Fri, 11 Dec 2020,
  created_at: Fri, 14 Apr 2023 18:53:59.372761000 UTC +00:00,
  updated_at: Fri, 14 Apr 2023 18:53:59.372761000 UTC +00:00,
  owner_id: 3>] 