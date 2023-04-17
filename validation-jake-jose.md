# Validations Challenges
Create a Rails application called company_contacts. The app will have a PostgreSQL database.
Generate a model called Account that has a username, a password, and an email.
All stories should have accompanying model specs.

validations git:(main) ✗ rails g model Account username:string password:string email:string 
      invoke  active_record
      create    db/migrate/20230417181109_create_accounts.rb
      create    app/models/account.rb
      invoke    rspec
      create      spec/models/account_spec.rb
➜  validations git:(main) ✗ rails db:migrate 
== 20230417181109 CreateAccounts: migrating ===================================
-- create_table(:accounts)
   -> 0.0082s
== 20230417181109 CreateAccounts: migrated (0.0082s) ==========================



Developer Stories

As a developer, I need username, password, and email to be required.

```bash
require 'rails_helper'

RSpec.describe Account, type: :model do
  it 'is not valid without a username' do
    user1 = Account.create username:'testing master', password:'Cool!', email:'tester@gmail.com'
    expect(user1.errors[:username]).to_not be_empty
  end
end


Failures:
  1) Account is not valid without a username
     Failure/Error: expect(user1.errors[:username]).to_not be_empty
       expected `[].empty?` to be falsey, got true
      ./spec/models/account_spec.rb:6:in `block (2 levels) in <top (required)>'
Finished in 0.07123 seconds (files took 2.33 seconds to load)
1 example, 1 failure


Finished in 0.02035 seconds (files took 0.61032 seconds to load)
3 examples, 0 failures

``` 

As a developer, I need every username to be at least 5 characters long.

```bash

it 'is not valid unless the username is greater than or equal to 5 characters' do
  user1 = Account.create username:'t m', password:'Cool!'
  expect(user1.errors[:username]).to_not be_empty
  end 

Failures:

  1) Account is not valid unless the username is greater than or equal to 5 characters
     Failure/Error: expect(user1.errors[:username]).to_not be_empty
       expected `[].empty?` to be falsey, got true
     # ./spec/models/account_spec.rb:21:in `block (2 levels) in <top (required)>'
 
 Finished in 0.02266 seconds (files took 0.65384 seconds to load)
 4 examples, 0 failures

```


As a developer, I need each username to be unique.

```bash
it 'does not allow duplicate username' do
    Account.create(username:'testing master',password:'Cool!', email:'tester@gmail.com')
    user1 = Account.create(username:'testing master',password:'Cool!', email:'tester@gmail.com')
    expect(user1.errors[:username]).to_not be_empty
    end

Failures:

  1) Account does not allow duplicate username
     Failure/Error: expect(user1.errors[:username]).to_not be_empty
       expected `[].empty?` to be falsey, got true
     # ./spec/models/account_spec.rb:27:in `block (2 levels) in <top (required)>'

Finished in 0.02686 seconds (files took 0.56598 seconds to load)
6 examples, 0 failures

```

As a developer, I need each password to be at least 6 characters long.

```bash
 it 'is not valid unless the password is greater than or equal to 6 characters' do
  user1 = Account.create password:'C!'
  expect(user1.errors[:password]).to_not be_empty
  end 

  Failures:

  1) Account is not valid unless the password is greater than or equal to 6 characters
     Failure/Error: expect(user1.errors[:password]).to_not be_empty
       expected `[].empty?` to be falsey, got true
     # ./spec/models/account_spec.rb:26:in `block (2 levels) in <top (required)>'

     Finished in 0.02204 seconds (files took 0.55832 seconds to load)
     5 examples, 0 failures
```


As a developer, I need each password to be unique.

```bash
 it 'does not allow duplicate passwords' do
    user2 = Account.create(username:'testingmaster', password:'Cool33!', email:'tester@gmail.com')
    user1 = Account.create(username:'testingmaster', password:'Cool33!', email:'usertester@gmail.com')
    expect(user1.errors[:password]).to_not be_empty
  end

  Failures:

  1) Account does not allow duplicate passwords
     Failure/Error: expect(user1.errors[:password]).to_not be_empty
       expected `[].empty?` to be falsey, got true

 Finished in 0.04065 seconds (files took 0.64031 seconds to load)
7 examples, 0 failures      
```


As a developer, I want my Account model to have many associated Addresses.

```bash
  validations git:(main) ✗ rails db:migrate
== 20230417213429 CreateAddresses: migrating ==================================
-- create_table(:addresses)
   -> 0.0081s
== 20230417213429 CreateAddresses: migrated (0.0081s) =========================
```

As a developer, I want Address to have street_number, street_name, city, state, and zip attributes. The street_number and zip should be integers.

```bash
➜  validations git:(main) ✗ rails g model Addresses street_number:integer street_name:string city:string state:string zip:integer
[WARNING] The model name 'Addresses' was recognized as a plural, using the singular 'Address' instead. Override with --force-plural or setup custom inflection rules for this noun before running the generator.
      invoke  active_record
      create    db/migrate/20230417213429_create_addresses.rb
      create    app/models/address.rb
      invoke    rspec
      create      spec/models/address_spec.rb

```

As a developer, I want to validate the presence of all fields on Address.

```bash
RSpec.describe Address, type: :model do
 it 'is not valid without an account' do
  Address.create street_number:123, street_name:'Malibu', city:'Aloha', state:'Hawaii', zip:62901 
 end
end


Finished in 0.06213 seconds (files took 0.70403 seconds to load)
8 examples, 0 failures

```

Stretch Challenges

As a developer, I need each Account password to have at least one number.
HINT: Read about custom validations in the Active Record validation docs.



As a developer, I want to validate that Address street_number, street_name, zip are unique for within an account.
HINT: Read about :scope in the Active Record validation docs.



As a developer, I want to validate that the Address street_number and zip are numbers.
HINT: Read about numericality in the Active Record validation docs.



As a developer, I want to see a custom error message that says "Please, input numbers only" if street_number or zip code are not numbers.
HINT: Read about message in the validation docs.




