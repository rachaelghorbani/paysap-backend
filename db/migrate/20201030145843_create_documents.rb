class CreateDocuments < ActiveRecord::Migration[6.0]
  def change
    create_table :documents do |t|
      t.integer :user_id
      t.string :description
      t.string :pdf_url

      t.timestamps
    end
  end
end
