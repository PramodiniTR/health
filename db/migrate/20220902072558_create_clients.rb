class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients do |t|
      t.integer :client_id
      t.string :client_name
      t.text :description
      t.integer :client_phone
      t.string :client_email
      t.string :client_primary_contact_name
      t.string :created_by
      t.string :updated_by

      t.timestamps
    end
  end
end
