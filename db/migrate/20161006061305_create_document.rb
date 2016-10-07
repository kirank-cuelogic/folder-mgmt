class CreateDocument < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.integer  :folder_id
      t.string   :document_name
      t.string   :description
      t.timestamps
    end
  end
end
