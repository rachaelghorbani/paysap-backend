class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.string :start_time
      t.integer :hours
      t.string :dayrate_or_hourly
      t.float :lat
      t.float :long
      t.string :location
      t.integer :rate
      t.integer :total_amount
      t.boolean :completed, :default => false
      t.references :client
      t.references :freelancer

      t.timestamps
    end
  end
end
