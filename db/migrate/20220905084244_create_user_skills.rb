class CreateUserSkills < ActiveRecord::Migration[7.0]
  def change
    create_table :user_skills do |t|
      t.integer :user_id
      t.string :skill
      t.string :created_by
      t.string :updated_by

      t.timestamps
    end
  end
end
