class RemoveCreditCardFromOwners < ActiveRecord::Migration[7.0]
  def change
    remove_column :owners, :credit_card, :string
  end
end
