class CreateExpenses < ActiveRecord::Migration[6.0]
  def change
    create_table :expenses do |t|
      t.string :date
      t.string :description
      t.float :amount
      t.string :category
      t.integer :user_id

      t.timestamps
    end
  end
end
