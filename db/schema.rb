# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170604192655) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories_jobs", force: :cascade do |t|
    t.bigint "category_id"
    t.bigint "job_id"
    t.index ["category_id"], name: "index_categories_jobs_on_category_id"
    t.index ["job_id"], name: "index_categories_jobs_on_job_id"
  end

  create_table "institutions", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "name", null: false
    t.string "phone", null: false
    t.string "address", null: false
    t.string "city", null: false
    t.string "state", null: false
    t.string "country", null: false
    t.float "grade"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_institutions_on_email", unique: true
    t.index ["reset_password_token"], name: "index_institutions_on_reset_password_token", unique: true
  end

  create_table "job_applications", force: :cascade do |t|
    t.boolean "accepted", default: false, null: false
    t.boolean "finished", default: false, null: false
    t.integer "number_of_days_attended"
    t.bigint "user_id"
    t.bigint "job_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["job_id"], name: "index_job_applications_on_job_id"
    t.index ["user_id"], name: "index_job_applications_on_user_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.string "description", null: false
    t.integer "number_of_days"
    t.boolean "closed", default: false, null: false
    t.bigint "institution_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["institution_id"], name: "index_jobs_on_institution_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.text "content"
    t.integer "grade"
    t.integer "reviewer_id"
    t.string "reviewer_type"
    t.integer "reviewed_id"
    t.string "reviewed_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "name", null: false
    t.string "phone", null: false
    t.string "address", null: false
    t.string "city", null: false
    t.string "state", null: false
    t.string "country", null: false
    t.float "grade"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
