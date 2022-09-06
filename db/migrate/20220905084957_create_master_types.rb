class CreateMasterTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :master_types do |t|
      t.string :name
      t.text :description
      t.string :type
      t.integer :status
      t.string :created_by
      t.string :updated_by

      t.timestamps
    end
  end
end
