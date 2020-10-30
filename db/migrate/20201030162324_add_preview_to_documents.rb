class AddPreviewToDocuments < ActiveRecord::Migration[6.0]
  def change
    add_column :documents, :preview_url, :string
  end
end
