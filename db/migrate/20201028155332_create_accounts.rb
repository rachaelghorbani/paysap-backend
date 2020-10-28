class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|
      t.integer :account_number
      t.integer :amount
      t.string :user_id

      t.timestamps
    end
  end
end
