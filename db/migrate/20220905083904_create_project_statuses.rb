class CreateProjectStatuses < ActiveRecord::Migration[7.0]
  def change
    create_table :project_statuses do |t|
      t.integer :project_id
      t.datetime :month
      t.integer :project_monthly_status
      t.string :utilization
      t.decimal :revenue_lost
      t.string :created_by
      t.string :updated_by

      t.timestamps
    end
  end
end
