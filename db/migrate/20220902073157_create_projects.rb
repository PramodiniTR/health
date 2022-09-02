class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.integer :project_id
      t.string :name
      t.string :project_type
      t.integer :project_manager
      t.datetime :start_date
      t.timestamp :end_date
      t.integer :client_id
      t.integer :project_closure_status
      t.string :created_by
      t.string :updated_by

      t.timestamps
    end
  end
end
