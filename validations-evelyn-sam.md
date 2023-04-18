Validations Challenges
Create a Rails application called company_contacts. The app will have a PostgreSQL database.
Generate a model called Account that has a username, a password, and an email.
All stories should have accompanying model specs.
Developer Stories

rails new company_contacts -d postgresql -T
cd company_contacts
rails db:create
bundle add rspec-rails
rails g rspec:install

RSpec.describe Account, type: :model do
  it 'is valid with valid attributes' do
    test_account = Account.create(username:'sam', password:'password123', email:'test@test.com')
    expect(test_account).to be_valid
  end
end

As a developer, I need username, password, and email to be required.

it 'is not valid without a username' do
    test_account = Account.create(password:'password123', email:'test@test.com')
    expect(test_account.errors[:username]).to_not be_empty
  end

  it 'is not valid without a password' do
    test_account = Account.create(email:'test@test.com')
    expect(test_account.errors[:password]).to_not be_empty
  end

  it 'is not valid without a email' do
    test_account = Account.create(password:'password123')
    expect(test_account.errors[:email]).to_not be_empty
  end

As a developer, I need every username to be at least 5 characters long.

it 'is not valid with a username less than 5 characters long' do
    test_account = Account.create(username:'sam', password:'password123', email:'test@test.com')
    expect(test_account.errors[:username]).to_not be_empty
  end

As a developer, I need each username to be unique.

it 'needs to have a unique username' do
    test_account = Account.create(username:'samuel', password:'password123', email:'test@test.com')
    dupe_test_account = Account.create(username:'samuel', password:'password123', email:'test@test.com')
    expect(dupe_test_account.errors[:username]).to_not be_empty
  end

As a developer, I need each password to be at least 6 characters long.

it 'is not valid with a password less than 6 characters long' do
    test_account = Account.create(username:'samuel', password:'pass', email:'test@test.com')
    expect(test_account.errors[:password]).to_not be_empty
  end

As a developer, I need each password to be unique.

it 'needs to have a unique password' do
    test_account = Account.create(username:'samuel', password:'password123', email:'test@test.com')
    dupe_test_account = Account.create(username:'samuel', password:'password123', email:'test@test.com')
    expect(dupe_test_account.errors[:password]).to_not be_empty
  end

As a developer, I want my Account model to have many associated Addresses.

class Account < ApplicationRecord
    has_many :addresses
    validates :username, :password, :email, presence: true
    validates :username, length: { in: 5..20 }
    validates :username, :password, uniqueness: true
    validates :password, length: { in: 6..20 }
end

class Address < ApplicationRecord
    belongs_to :account
end

As a developer, I want Address to have street_number, street_name, city, state, and zip attributes. The street_number and zip should be integers.

class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.integer :street_number
      t.string :street_name
      t.string :city
      t.string :state
      t.integer :zip

      t.timestamps
    end
  end
end

As a developer, I want to validate the presence of all fields on Address.

class Address < ApplicationRecord
    belongs_to :account
    validates :street_number, :street_name, :city, :state, :zip, presence: true
end

Stretch Challenges

As a developer, I need each Account password to have at least one number.
HINT: Read about custom validations in the Active Record validation docs.

Create a folder called validators, and a file called password_validator.rb inside

class PasswordValidator <  ActiveModel::Validator
    def validate(record)
        if record.password != nil
            if record.password.count("0-9") == 0
                record.errors.add(:password, "Password must contain at least one number")
            end
        end
    end
end

Then in account.rb, use: 
validates_with PasswordValidator


As a developer, I want to validate that Address street_number, street_name, zip are unique for within an account.
HINT: Read about :scope in the Active Record validation docs.

validates :street_number, :street_name, :zip, uniqueness: { scope: :account_id, message: "should have once per account" }

it 'cannot have duplicate street number within account' do
    test_account = Account.create(username:'samuel', password:'password123', email:'test@test.com')
    test_address = test_account.addresses.create(street_number: 333, street_name: 'Main Street', city: 'San Diego', state: 'CA', zip: 12345)
    dupe_test_address = test_account.addresses.create(street_number: 333, street_name: 'Main Street', city: 'San Diego', state: 'CA', zip: 12345)
    expect(dupe_test_address.errors[:street_number]).to_not be_empty
  end

  it 'cannot have duplicate street name within account' do
    test_account = Account.create(username:'samuel', password:'password123', email:'test@test.com')
    test_address = test_account.addresses.create(street_number: 333, street_name: 'Main Street', city: 'San Diego', state: 'CA', zip: 12345)
    dupe_test_address = test_account.addresses.create(street_number: 333, street_name: 'Main Street', city: 'San Diego', state: 'CA', zip: 12345)
    expect(dupe_test_address.errors[:street_name]).to_not be_empty
  end

  it 'cannot have duplicate zip within account' do
    test_account = Account.create(username:'samuel', password:'password123', email:'test@test.com')
    test_address = test_account.addresses.create(street_number: 333, street_name: 'Main Street', city: 'San Diego', state: 'CA', zip: 12345)
    dupe_test_address = test_account.addresses.create(street_number: 333, street_name: 'Main Street', city: 'San Diego', state: 'CA', zip: 12345)
    expect(dupe_test_address.errors[:zip]).to_not be_empty
  end

As a developer, I want to validate that the Address street_number and zip are numbers.
HINT: Read about numericality in the Active Record validation docs.

validates :street_number, :zip, numericality: { only_integer: true }

it 'must have an integer for a street number' do
    test_account = Account.create(username:'samuel', password:'password123', email:'test@test.com')
    test_address = test_account.addresses.create(street_number: 333.0, street_name: 'Main Street', city: 'San Diego', state: 'CA', zip: 12345)
    expect(test_address.errors[:street_number]).to_not be_empty
  end

  it 'must have an integer for a zip' do
    test_account = Account.create(username:'samuel', password:'password123', email:'test@test.com')
    test_address = test_account.addresses.create(street_number: 333, street_name: 'Main Street', city: 'San Diego', state: 'CA', zip: 12345.0)
    expect(test_address.errors[:zip]).to_not be_empty
  end

As a developer, I want to see a custom error message that says "Please, input numbers only" if street_number or zip code are not numbers.
HINT: Read about message in the validation docs.

