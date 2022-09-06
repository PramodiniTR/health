class CreateUserProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :user_profiles do |t|
      t.integer :user_id
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :phone
      t.integer :status
      t.datetime :joining_date
      t.string :employee_type
      t.decimal :salary
      t.string :created_by
      t.string :updated_by

      t.timestamps
    end
  end
end
