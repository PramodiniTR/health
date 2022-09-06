# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_09_05_084957) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: :cascade do |t|
    t.integer "client_id"
    t.string "client_name"
    t.text "description"
    t.integer "client_phone"
    t.string "client_email"
    t.string "client_primary_contact_name"
    t.string "created_by"
    t.string "updated_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jwt_denylist", force: :cascade do |t|
    t.string "jti", null: false
    t.datetime "exp", null: false
    t.index ["jti"], name: "index_jwt_denylist_on_jti"
  end

  create_table "login_audits", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "login_date_time"
    t.datetime "logout_date_time"
    t.string "login_error"
    t.string "login_status"
    t.string "created_by"
    t.string "updated_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "master_types", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "type"
    t.integer "status"
    t.string "created_by"
    t.string "updated_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "project_statuses", force: :cascade do |t|
    t.integer "project_id"
    t.datetime "month"
    t.integer "project_monthly_status"
    t.string "utilization"
    t.decimal "revenue_lost"
    t.string "created_by"
    t.string "updated_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.integer "project_id"
    t.string "name"
    t.string "project_type"
    t.integer "project_manager"
    t.datetime "start_date"
    t.datetime "end_date", precision: nil
    t.integer "client_id"
    t.integer "project_closure_status"
    t.string "created_by"
    t.string "updated_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_profiles", force: :cascade do |t|
    t.integer "user_id"
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.integer "phone"
    t.integer "status"
    t.datetime "joining_date"
    t.string "employee_type"
    t.decimal "salary"
    t.string "created_by"
    t.string "updated_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_projects", force: :cascade do |t|
    t.integer "user_id"
    t.integer "project_id"
    t.string "created_by"
    t.string "updated_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_skills", force: :cascade do |t|
    t.integer "user_id"
    t.string "skill"
    t.string "created_by"
    t.string "updated_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_utilizations", force: :cascade do |t|
    t.integer "user_id"
    t.integer "project_id"
    t.datetime "month"
    t.datetime "year"
    t.string "utilization"
    t.string "created_by"
    t.string "updated_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
