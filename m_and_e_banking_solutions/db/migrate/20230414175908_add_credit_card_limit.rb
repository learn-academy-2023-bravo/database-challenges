class AddCreditCardLimit < ActiveRecord::Migration[7.0]
  def change
    add_column :credits, :credit_limit, :decimal
  end
end
