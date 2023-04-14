class CreateCredits < ActiveRecord::Migration[7.0]
  def change
    create_table :credits do |t|
      t.string :credit_card
      t.date :expiration_date
      t.integer :owner_id

      t.timestamps
    end
  end
end
