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

ActiveRecord::Schema.define(version: 2021_07_16_184136) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "given_likes", force: :cascade do |t|
    t.string "ig_media_id"
    t.string "ig_user_id"
    t.bigint "job_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_url"
    t.index ["job_id"], name: "index_given_likes_on_job_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.string "image_url"
    t.text "caption"
    t.string "hashtag"
    t.bigint "user_id"
    t.string "user_ig_media_id"
    t.integer "likes_received"
    t.datetime "launched_at"
    t.datetime "stopped_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "followers_gained"
    t.string "process_pid"
    t.index ["user_id"], name: "index_jobs_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "ig_user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "given_likes", "jobs"
  add_foreign_key "jobs", "users"
end
