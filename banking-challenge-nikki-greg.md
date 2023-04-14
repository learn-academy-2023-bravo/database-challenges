Last login: Fri Apr 14 10:47:51 on ttys000
[oh-my-zsh] plugin 'zsh-syntax-highlighting' not found
[oh-my-zsh] theme 'powerlevel10k/powerlevel10k' not found
learnacademy@LEARNs-MacBook-Air banking-challenge2 % rails c
Loading development environment (Rails 7.0.4.3)
3.2.0 :001 > Card.create(number:'846836572983', expiration_date:'04/2064', owner:owner1)
(irb):1:in `<main>': undefined local variable or method `owner1' for main:Object (NameError)
                                                                                    
Card.create(number:'846836572983', expiration_date:'04/2064', owner:owner1)         
                                                                    ^^^^^^
3.2.0 :002 > Card.create(number:'846836572983', expiration_date:'04/2064', owner: owner1)
(irb):2:in `<main>': undefined local variable or method `owner1' for main:Object (NameError)
                                                               
Card.create(number:'846836572983', expiration_date:'04/2064', owner: owner1)
                                                                     ^^^^^^
3.2.0 :003 > owner1 = 'Nikki'
 => "Nikki" 
3.2.0 :004 > Card.create(number:'846836572983', expiration_date:'04/2064', owner: owner1)
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activerecord-7.0.4.3/lib/active_record/associations/association.rb:299:in `raise_on_type_mismatch!': Owner(#260100) expected, got "Nikki" which is an instance of String(#2020) (ActiveRecord::AssociationTypeMismatch)   
3.2.0 :005 > Card.create(number:'846836572983', expiration_date:'04/2064', owner:'Nikki')
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activerecord-7.0.4.3/lib/active_record/associations/association.rb:299:in `raise_on_type_mismatch!': Owner(#260100) expected, got "Nikki" which is an instance of String(#2020) (ActiveRecord::AssociationTypeMismatch)                                  
3.2.0 :006 > exit
learnacademy@LEARNs-MacBook-Air banking-challenge2 % rails db:migrate
learnacademy@LEARNs-MacBook-Air banking-challenge2 % rails generate migration ChangeOwnerColumn
      invoke  active_record
      create    db/migrate/20230414182626_change_owner_column.rb
learnacademy@LEARNs-MacBook-Air banking-challenge2 % rails db:migrate                          
== 20230414182626 ChangeOwnerColumn: migrating ================================
== 20230414182626 ChangeOwnerColumn: migrated (0.0000s) =======================

learnacademy@LEARNs-MacBook-Air banking-challenge2 % rails db:migrate
learnacademy@LEARNs-MacBook-Air banking-challenge2 % rails c         
Loading development environment (Rails 7.0.4.3)
3.2.0 :001 > nikki = Owner.first
  Owner Load (0.5ms)  SELECT "owners".* FROM "owners" ORDER BY "owners"."id" ASC LIMIT $1  [["LIMIT", 1]]                                                                  
 =>                                                                  
#<Owner:0x00000001078bde60                                           
...                                                                  
3.2.0 :002 > nikki
 => 
#<Owner:0x00000001078bde60                                           
 id: 1,                                                              
 name: "Nikki",                                                      
 address: "9749 San Diego St",                                       
 created_at: Fri, 14 Apr 2023 17:51:39.746999000 UTC +00:00,         
 updated_at: Fri, 14 Apr 2023 17:51:39.746999000 UTC +00:00>         
3.2.0 :003 > nikki.cards
An error occurred when inspecting the object: #<ActiveRecord::StatementInvalid:"PG::UndefinedColumn: ERROR:  column cards.owner_id does not exist\nLINE 1: SELECT \"cards\".* FROM \"cards\" WHERE \"cards\".\"owner_id\" = $1\n                                            ^\nHINT:  Perhaps you meant to reference the column \"cards.owner\".\n">                           
An error occurred when running Kernel#inspect: #<ActiveRecord::StatementInvalid:"PG::UndefinedColumn: ERROR:  column cards.owner_id does not exist\nLINE 1: SELECT \"cards\".* FROM \"cards\" WHERE \"cards\".\"owner_id\" = $1 ...\n                                            ^\nHINT:  Perhaps you meant to reference the column \"cards.owner\".\n">                      
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activerecord-7.0.4.3/lib/active_record/connection_adapters/postgresql_adapter.rb:837:in `prepare'                    
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activerecord-7.0.4.3/lib/active_record/connection_adapters/postgresql_adapter.rb:837:in `block in prepare_statement' 
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activesupport-7.0.4.3/lib/active_support/concurrency/load_interlock_aware_monitor.rb:25:in `handle_interrupt'        
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activesupport-7.0.4.3/lib/active_support/concurrency/load_interlock_aware_monitor.rb:25:in `block in synchronize'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activesupport-7.0.4.3/lib/active_support/concurrency/load_interlock_aware_monitor.rb:21:in `handle_interrupt'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activesupport-7.0.4.3/lib/active_support/concurrency/load_interlock_aware_monitor.rb:21:in `synchronize'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activerecord-7.0.4.3/lib/active_record/connection_adapters/postgresql_adapter.rb:832:in `prepare_statement'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activerecord-7.0.4.3/lib/active_record/connection_adapters/postgresql_adapter.rb:778:in `exec_cache'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activerecord-7.0.4.3/lib/active_record/connection_adapters/postgresql_adapter.rb:747:in `execute_and_clear'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activerecord-7.0.4.3/lib/active_record/connection_adapters/postgresql/database_statements.rb:54:in `exec_query'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activerecord-7.0.4.3/lib/active_record/connection_adapters/abstract/database_statements.rb:560:in `select'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activerecord-7.0.4.3/lib/active_record/connection_adapters/abstract/database_statements.rb:66:in `select_all'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activerecord-7.0.4.3/lib/active_record/connection_adapters/abstract/query_cache.rb:110:in `select_all'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activerecord-7.0.4.3/lib/active_record/querying.rb:54:in `_query_by_sql'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activerecord-7.0.4.3/lib/active_record/relation.rb:942:in `block in exec_main_query'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activerecord-7.0.4.3/lib/active_record/relation.rb:962:in `skip_query_cache_if_necessary'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activerecord-7.0.4.3/lib/active_record/relation.rb:928:in `exec_main_query'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activerecord-7.0.4.3/lib/active_record/relation.rb:914:in `block in exec_queries'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activerecord-7.0.4.3/lib/active_record/relation.rb:962:in `skip_query_cache_if_necessary'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activerecord-7.0.4.3/lib/active_record/relation.rb:908:in `exec_queries'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activerecord-7.0.4.3/lib/active_record/relation.rb:695:in `load'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activerecord-7.0.4.3/lib/active_record/relation.rb:250:in `records'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activerecord-7.0.4.3/lib/active_record/relation.rb:245:in `to_ary'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activerecord-7.0.4.3/lib/active_record/relation/finder_methods.rb:528:in `find_take_with_limit'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activerecord-7.0.4.3/lib/active_record/relation/finder_methods.rb:98:in `take'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activerecord-7.0.4.3/lib/active_record/relation.rb:796:in `inspect'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/irb-1.6.4/lib/irb/inspector.rb:101:in `inspect'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/irb-1.6.4/lib/irb/inspector.rb:101:in `inspect'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/irb-1.6.4/lib/irb/inspector.rb:101:in `bind_call'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/irb-1.6.4/lib/irb/inspector.rb:101:in `rescue in inspect_value'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/irb-1.6.4/lib/irb/inspector.rb:95:in `inspect_value'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/irb-1.6.4/lib/irb/context.rb:501:in `inspect_last_value'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/irb-1.6.4/lib/irb.rb:825:in `output_value'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/irb-1.6.4/lib/irb.rb:589:in `block (2 levels) in eval_input'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/irb-1.6.4/lib/irb.rb:770:in `signal_status'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/irb-1.6.4/lib/irb.rb:561:in `block in eval_input'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/irb-1.6.4/lib/irb/ruby-lex.rb:253:in `block (2 levels) in each_top_level_statement'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/irb-1.6.4/lib/irb/ruby-lex.rb:235:in `loop'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/irb-1.6.4/lib/irb/ruby-lex.rb:235:in `block in each_top_level_statement'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/irb-1.6.4/lib/irb/ruby-lex.rb:234:in `catch'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/irb-1.6.4/lib/irb/ruby-lex.rb:234:in `each_top_level_statement'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/irb-1.6.4/lib/irb.rb:560:in `eval_input'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/irb-1.6.4/lib/irb.rb:494:in `block in run'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/irb-1.6.4/lib/irb.rb:493:in `catch'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/irb-1.6.4/lib/irb.rb:493:in `run'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/irb-1.6.4/lib/irb.rb:416:in `start'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/railties-7.0.4.3/lib/rails/commands/console/console_command.rb:70:in `start'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/railties-7.0.4.3/lib/rails/commands/console/console_command.rb:19:in `start'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/railties-7.0.4.3/lib/rails/commands/console/console_command.rb:102:in `perform'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/thor-1.2.1/lib/thor/command.rb:27:in `run'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/thor-1.2.1/lib/thor/invocation.rb:127:in `invoke_command'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/thor-1.2.1/lib/thor.rb:392:in `dispatch'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/railties-7.0.4.3/lib/rails/command/base.rb:87:in `perform'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/railties-7.0.4.3/lib/rails/command.rb:48:in `invoke'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/railties-7.0.4.3/lib/rails/commands.rb:18:in `<main>'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/bootsnap-1.16.0/lib/bootsnap/load_path_cache/core_ext/kernel_require.rb:32:in `require'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/bootsnap-1.16.0/lib/bootsnap/load_path_cache/core_ext/kernel_require.rb:32:in `require'
bin/rails:4:in `<main>'
 =>  
3.2.0 :004 > nikki.cards.owner
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activerecord-7.0.4.3/lib/active_record/relation/delegation.rb:110:in `method_missing': undefined method `owner' for #<Card::ActiveRecord_Associations_CollectionProxy:0x000000010793ea60> (NoMethodError)               
3.2.0 :005 > nikki.card
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activemodel-7.0.4.3/lib/active_model/attribute_methods.rb:458:in `method_missing': undefined method `card' for #<Owner id: 1, name: "Nikki", address: "9749 San Diego St", created_at: "2023-04-14 17:51:39.746999000 +0000", updated_at: "2023-04-14 17:51:39.746999000 +0000"> (NoMethodError)
Did you mean?  cards        
3.2.0 :006 > nikki.cards
An error occurred when inspecting the object: #<ActiveRecord::StatementInvalid:"PG::UndefinedColumn: ERROR:  column cards.owner_id does not exist\nLINE 1: SELECT \"cards\".* FROM \"cards\" WHERE \"cards\".\"owner_id\" = $1\n                                            ^\nHINT:  Perhaps you meant to reference the column \"cards.owner\".\n">
An error occurred when running Kernel#inspect: #<ActiveRecord::StatementInvalid:"PG::UndefinedColumn: ERROR:  column cards.owner_id does not exist\nLINE 1: SELECT \"cards\".* FROM \"cards\" WHERE \"cards\".\"owner_id\" = $1 ...\n                                            ^\nHINT:  Perhaps you meant to reference the column \"cards.owner\".\n">
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activerecord-7.0.4.3/lib/active_record/connection_adapters/postgresql_adapter.rb:837:in `prepare'                                     
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activerecord-7.0.4.3/lib/active_record/connection_adapters/postgresql_adapter.rb:837:in `block in prepare_statement'                  
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activesupport-7.0.4.3/lib/active_support/concurrency/load_interlock_aware_monitor.rb:25:in `handle_interrupt'                         
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activesupport-7.0.4.3/lib/active_support/concurrency/load_interlock_aware_monitor.rb:25:in `block in synchronize'                     
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activesupport-7.0.4.3/lib/active_support/concurrency/load_interlock_aware_monitor.rb:21:in `handle_interrupt'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activesupport-7.0.4.3/lib/active_support/concurrency/load_interlock_aware_monitor.rb:21:in `synchronize'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activerecord-7.0.4.3/lib/active_record/connection_adapters/postgresql_adapter.rb:832:in `prepare_statement'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activerecord-7.0.4.3/lib/active_record/connection_adapters/postgresql_adapter.rb:778:in `exec_cache'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activerecord-7.0.4.3/lib/active_record/connection_adapters/postgresql_adapter.rb:747:in `execute_and_clear'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activerecord-7.0.4.3/lib/active_record/connection_adapters/postgresql/database_statements.rb:54:in `exec_query'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activerecord-7.0.4.3/lib/active_record/connection_adapters/abstract/database_statements.rb:560:in `select'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activerecord-7.0.4.3/lib/active_record/connection_adapters/abstract/database_statements.rb:66:in `select_all'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activerecord-7.0.4.3/lib/active_record/connection_adapters/abstract/query_cache.rb:110:in `select_all'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activerecord-7.0.4.3/lib/active_record/querying.rb:54:in `_query_by_sql'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activerecord-7.0.4.3/lib/active_record/relation.rb:942:in `block in exec_main_query'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activerecord-7.0.4.3/lib/active_record/relation.rb:962:in `skip_query_cache_if_necessary'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activerecord-7.0.4.3/lib/active_record/relation.rb:928:in `exec_main_query'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activerecord-7.0.4.3/lib/active_record/relation.rb:914:in `block in exec_queries'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activerecord-7.0.4.3/lib/active_record/relation.rb:962:in `skip_query_cache_if_necessary'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activerecord-7.0.4.3/lib/active_record/relation.rb:908:in `exec_queries'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activerecord-7.0.4.3/lib/active_record/relation.rb:695:in `load'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activerecord-7.0.4.3/lib/active_record/relation.rb:250:in `records'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activerecord-7.0.4.3/lib/active_record/relation.rb:245:in `to_ary'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activerecord-7.0.4.3/lib/active_record/relation/finder_methods.rb:528:in `find_take_with_limit'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activerecord-7.0.4.3/lib/active_record/relation/finder_methods.rb:98:in `take'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activerecord-7.0.4.3/lib/active_record/relation.rb:796:in `inspect'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/irb-1.6.4/lib/irb/inspector.rb:101:in `inspect'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/irb-1.6.4/lib/irb/inspector.rb:101:in `inspect'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/irb-1.6.4/lib/irb/inspector.rb:101:in `bind_call'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/irb-1.6.4/lib/irb/inspector.rb:101:in `rescue in inspect_value'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/irb-1.6.4/lib/irb/inspector.rb:95:in `inspect_value'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/irb-1.6.4/lib/irb/context.rb:501:in `inspect_last_value'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/irb-1.6.4/lib/irb.rb:825:in `output_value'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/irb-1.6.4/lib/irb.rb:589:in `block (2 levels) in eval_input'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/irb-1.6.4/lib/irb.rb:770:in `signal_status'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/irb-1.6.4/lib/irb.rb:561:in `block in eval_input'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/irb-1.6.4/lib/irb/ruby-lex.rb:253:in `block (2 levels) in each_top_level_statement'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/irb-1.6.4/lib/irb/ruby-lex.rb:235:in `loop'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/irb-1.6.4/lib/irb/ruby-lex.rb:235:in `block in each_top_level_statement'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/irb-1.6.4/lib/irb/ruby-lex.rb:234:in `catch'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/irb-1.6.4/lib/irb/ruby-lex.rb:234:in `each_top_level_statement'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/irb-1.6.4/lib/irb.rb:560:in `eval_input'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/irb-1.6.4/lib/irb.rb:494:in `block in run'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/irb-1.6.4/lib/irb.rb:493:in `catch'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/irb-1.6.4/lib/irb.rb:493:in `run'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/irb-1.6.4/lib/irb.rb:416:in `start'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/railties-7.0.4.3/lib/rails/commands/console/console_command.rb:70:in `start'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/railties-7.0.4.3/lib/rails/commands/console/console_command.rb:19:in `start'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/railties-7.0.4.3/lib/rails/commands/console/console_command.rb:102:in `perform'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/thor-1.2.1/lib/thor/command.rb:27:in `run'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/thor-1.2.1/lib/thor/invocation.rb:127:in `invoke_command'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/thor-1.2.1/lib/thor.rb:392:in `dispatch'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/railties-7.0.4.3/lib/rails/command/base.rb:87:in `perform'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/railties-7.0.4.3/lib/rails/command.rb:48:in `invoke'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/railties-7.0.4.3/lib/rails/commands.rb:18:in `<main>'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/bootsnap-1.16.0/lib/bootsnap/load_path_cache/core_ext/kernel_require.rb:32:in `require'
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/bootsnap-1.16.0/lib/bootsnap/load_path_cache/core_ext/kernel_require.rb:32:in `require'
bin/rails:4:in `<main>'
 =>  
3.2.0 :007 > exit
learnacademy@LEARNs-MacBook-Air banking-challenge2 % rails generate migration RemoveOwnerColumnInCardTable   
      invoke  active_record
      create    db/migrate/20230414183651_remove_owner_column_in_card_table.rb
learnacademy@LEARNs-MacBook-Air banking-challenge2 % rails db:migrate                                     
== 20230414183651 RemoveOwnerColumnInCardTable: migrating =====================
-- remove_column(:cards, :owner)
   -> 0.0022s
== 20230414183651 RemoveOwnerColumnInCardTable: migrated (0.0022s) ============

learnacademy@LEARNs-MacBook-Air banking-challenge2 % rails generate migration AddOwnerIDColumnToCardTable 
      invoke  active_record
      create    db/migrate/20230414183929_add_owner_id_column_to_card_table.rb
learnacademy@LEARNs-MacBook-Air banking-challenge2 % rails db:migrate                                    
== 20230414183929 AddOwnerIdColumnToCardTable: migrating ======================
-- add_column(:card, :owner_id, :integer)
rails aborted!
StandardError: An error has occurred, this and all later migrations canceled:

PG::UndefinedTable: ERROR:  relation "card" does not exist
/Users/learnacademy/Desktop/banking-challenge2/db/migrate/20230414183929_add_owner_id_column_to_card_table.rb:3:in `change'

Caused by:
ActiveRecord::StatementInvalid: PG::UndefinedTable: ERROR:  relation "card" does not exist
/Users/learnacademy/Desktop/banking-challenge2/db/migrate/20230414183929_add_owner_id_column_to_card_table.rb:3:in `change'

Caused by:
PG::UndefinedTable: ERROR:  relation "card" does not exist
/Users/learnacademy/Desktop/banking-challenge2/db/migrate/20230414183929_add_owner_id_column_to_card_table.rb:3:in `change'
Tasks: TOP => db:migrate
(See full trace by running task with --trace)
learnacademy@LEARNs-MacBook-Air banking-challenge2 % rails db:migrate
== 20230414183929 AddOwnerIdColumnToCardTable: migrating ======================
-- add_column(:cards, :owner_id, :integer)
   -> 0.0016s
== 20230414183929 AddOwnerIdColumnToCardTable: migrated (0.0016s) =============

learnacademy@LEARNs-MacBook-Air banking-challenge2 % rails c                                             
Loading development environment (Rails 7.0.4.3)
3.2.0 :001 > nikki = owner.first
(irb):1:in `<main>': undefined local variable or method `owner' for main:Object (NameError)
                              
nikki = owner.first           
        ^^^^^           
3.2.0 :002 > nikki = Owner.first
  Owner Load (0.5ms)  SELECT "owners".* FROM "owners" ORDER BY "owners"."id" ASC LIMIT $1  [["LIMIT", 1]]
 =>                                                                  
#<Owner:0x000000010ad327e0                                           
...                                                                  
3.2.0 :003 > nikki.cards
  Card Load (0.4ms)  SELECT "cards".* FROM "cards" WHERE "cards"."owner_id" = $1  [["owner_id", 1]]
 => []                                                               
3.2.0 :004 > nikki.cards.create(number:'973567298635', expiration_date:'05/2027')
  TRANSACTION (0.2ms)  BEGIN
  Card Create (0.6ms)  INSERT INTO "cards" ("number", "expiration_date", "created_at", "updated_at", "owner_id") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["number", "973567298635"], ["expiration_date", "05/2027"], ["created_at", "2023-04-14 18:43:03.469568"], ["updated_at", "2023-04-14 18:43:03.469568"], ["owner_id", 1]]
  TRANSACTION (0.5ms)  COMMIT                                         
 =>                                                                   
#<Card:0x0000000109eb6978                                             
 id: 4,                                                               
 number: "973567298635",                                              
 expiration_date: "05/2027",                                          
 created_at: Fri, 14 Apr 2023 18:43:03.469568000 UTC +00:00,          
 updated_at: Fri, 14 Apr 2023 18:43:03.469568000 UTC +00:00,          
 owner_id: 1>                                                         
3.2.0 :005 > greg = Owner.second
  Owner Load (0.2ms)  SELECT "owners".* FROM "owners" ORDER BY "owners"."id" ASC LIMIT $1 OFFSET $2  [["LIMIT", 1], ["OFFSET", 1]]                                                           
 =>                                                                   
#<Owner:0x000000010d9b6c30                                            
...                                                                   
3.2.0 :006 > greg.cards
  Card Load (0.4ms)  SELECT "cards".* FROM "cards" WHERE "cards"."owner_id" = $1  [["owner_id", 2]]
 => []                                                                
3.2.0 :007 > greg.cards.create(number:'976397357292', expiration_date:'07/2077')
  TRANSACTION (0.2ms)  BEGIN
  Card Create (0.4ms)  INSERT INTO "cards" ("number", "expiration_date", "created_at", "updated_at", "owner_id") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["number", "976397357292"], ["expiration_date", "07/2077"], ["created_at", "2023-04-14 18:45:14.668475"], ["updated_at", "2023-04-14 18:45:14.668475"], ["owner_id", 2]]
  TRANSACTION (0.6ms)  COMMIT                                         
 =>                                                                  
#<Card:0x000000010d01d340                                            
 id: 5,                                                              
 number: "976397357292",                                             
 expiration_date: "07/2077",                                         
 created_at: Fri, 14 Apr 2023 18:45:14.668475000 UTC +00:00,         
 updated_at: Fri, 14 Apr 2023 18:45:14.668475000 UTC +00:00,         
 owner_id: 2>                                                        
3.2.0 :008 > Card.all
  Card Load (0.4ms)  SELECT "cards".* FROM "cards"
 =>                                                         
[#<Card:0x000000010d99b188                                  
  id: 1,                                                    
  number: "8657297629862",                                  
  expiration_date: "07/2026",                               
  created_at: Fri, 14 Apr 2023 17:58:49.873591000 UTC +00:00,
  updated_at: Fri, 14 Apr 2023 17:58:49.873591000 UTC +00:00,
  owner_id: nil>,                                           
 #<Card:0x000000010d99b048                                  
  id: 2,                                                    
  number: "9636867396537",                                  
  expiration_date: "07/2026",                               
  created_at: Fri, 14 Apr 2023 17:59:32.447857000 UTC +00:00,
  updated_at: Fri, 14 Apr 2023 17:59:32.447857000 UTC +00:00,
  owner_id: nil>,
 #<Card:0x000000010d99af08
  id: 3,
  number: "863586387573",
  expiration_date: "07/2026",
  created_at: Fri, 14 Apr 2023 17:59:59.915762000 UTC +00:00,
  updated_at: Fri, 14 Apr 2023 17:59:59.915762000 UTC +00:00,
  owner_id: nil>,
 #<Card:0x000000010d99adc8
  id: 4,
  number: "973567298635",
  expiration_date: "05/2027",
  created_at: Fri, 14 Apr 2023 18:43:03.469568000 UTC +00:00,
  updated_at: Fri, 14 Apr 2023 18:43:03.469568000 UTC +00:00,
  owner_id: 1>,
 #<Card:0x000000010d99ac88
  id: 5,
  number: "976397357292",
  expiration_date: "07/2077",
  created_at: Fri, 14 Apr 2023 18:45:14.668475000 UTC +00:00,
  updated_at: Fri, 14 Apr 2023 18:45:14.668475000 UTC +00:00,
  owner_id: 2>] 
3.2.0 :009 > charlean = Owner.last
  Owner Load (0.3ms)  SELECT "owners".* FROM "owners" ORDER BY "owners"."id" DESC LIMIT $1  [["LIMIT", 1]]
 =>                                                                     
#<Owner:0x000000010d9b9cf0                                              
...                                                                     
3.2.0 :010 > charlean.cards
  Card Load (0.4ms)  SELECT "cards".* FROM "cards" WHERE "cards"."owner_id" = $1  [["owner_id", 3]]
 => []                                                                  
3.2.0 :011 > charlean.cards.create(number:'927638635749', expiration_date:'04/2077')
  TRANSACTION (0.2ms)  BEGIN
  Card Create (0.4ms)  INSERT INTO "cards" ("number", "expiration_date", "created_at", "updated_at", "owner_id") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["number", "927638635749"], ["expiration_date", "04/2077"], ["created_at", "2023-04-14 18:47:06.340939"], ["updated_at", "2023-04-14 18:47:06.340939"], ["owner_id", 3]]
  TRANSACTION (1.1ms)  COMMIT                                            
 =>                                                                      
#<Card:0x000000010d8b48a0                                                
 id: 6,                                                                  
 number: "927638635749",                                                 
 expiration_date: "04/2077",                                             
 created_at: Fri, 14 Apr 2023 18:47:06.340939000 UTC +00:00,             
 updated_at: Fri, 14 Apr 2023 18:47:06.340939000 UTC +00:00,             
 owner_id: 3>                                                            
3.2.0 :012 > nikki
 => 
#<Owner:0x000000010ad327e0
 id: 1,                 
 name: "Nikki",         
 address: "9749 San Diego St",
 created_at: Fri, 14 Apr 2023 17:51:39.746999000 UTC +00:00,
 updated_at: Fri, 14 Apr 2023 17:51:39.746999000 UTC +00:00> 
3.2.0 :013 > 