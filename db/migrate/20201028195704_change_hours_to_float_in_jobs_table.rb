class ChangeHoursToFloatInJobsTable < ActiveRecord::Migration[6.0]
  def change
    change_column :jobs, :hours, :float
  end
end
