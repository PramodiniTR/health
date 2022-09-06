class CreateLoginAudits < ActiveRecord::Migration[7.0]
  def change
    create_table :login_audits do |t|
      t.integer :user_id
      t.datetime :login_date_time
      t.datetime :logout_date_time
      t.string :login_error
      t.string :login_status
      t.string :created_by
      t.string :updated_by

      t.timestamps
    end
  end
end
