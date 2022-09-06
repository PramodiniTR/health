class CreateUserUtilizations < ActiveRecord::Migration[7.0]
  def change
    create_table :user_utilizations do |t|
      t.integer :user_id
      t.integer :project_id
      t.datetime :month
      t.datetime :year
      t.string :utilization
      t.string :created_by
      t.string :updated_by

      t.timestamps
    end
  end
end
