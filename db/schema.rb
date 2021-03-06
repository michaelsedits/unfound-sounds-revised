# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150602151127) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "albums", force: :cascade do |t|
    t.string   "title"
    t.string   "band"
    t.string   "cover"
    t.string   "rdio_link"
    t.boolean  "found"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "link"
    t.string   "link_text"
    t.integer  "round_id"
    t.string   "slug"
    t.string   "review"
    t.string   "finder"
    t.string   "finder_photo"
  end

  add_index "albums", ["slug"], name: "index_albums_on_slug", unique: true, using: :btree

  create_table "delayed_jobs", force: :cascade do |t|
    t.integer  "priority",   default: 0, null: false
    t.integer  "attempts",   default: 0, null: false
    t.text     "handler",                null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority", using: :btree

  create_table "features", force: :cascade do |t|
    t.integer  "place_id"
    t.string   "name"
    t.string   "description"
    t.string   "photo"
    t.string   "thumbnail"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "finders", force: :cascade do |t|
    t.string   "name"
    t.string   "photo"
    t.integer  "album_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "slug"
  end

  add_index "finders", ["slug"], name: "index_finders_on_slug", unique: true, using: :btree

  create_table "finds", force: :cascade do |t|
    t.string   "album_id"
    t.string   "user_id"
    t.string   "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hints", force: :cascade do |t|
    t.string   "name"
    t.string   "photo"
    t.text     "description"
    t.string   "thumbnail"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "album_id"
    t.string   "slug"
  end

  add_index "hints", ["slug"], name: "index_hints_on_slug", unique: true, using: :btree

  create_table "places", force: :cascade do |t|
    t.string   "name"
    t.string   "link"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "album_id"
    t.string   "link_text"
    t.string   "slug"
    t.string   "teaser"
    t.float    "latitude"
    t.float    "longitude"
  end

  add_index "places", ["slug"], name: "index_places_on_slug", unique: true, using: :btree

  create_table "rounds", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "slug"
    t.date     "month"
  end

  add_index "rounds", ["slug"], name: "index_rounds_on_slug", unique: true, using: :btree

  create_table "rounds_users", id: false, force: :cascade do |t|
    t.integer "user_id",  null: false
    t.integer "round_id", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                           null: false
    t.string   "crypted_password",                null: false
    t.string   "salt",                            null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_me_token"
    t.datetime "remember_me_token_expires_at"
    t.string   "reset_password_token"
    t.datetime "reset_password_token_expires_at"
    t.datetime "reset_password_email_sent_at"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "username"
    t.string   "slug"
    t.integer  "album_id"
    t.string   "card_token"
    t.string   "photo"
    t.string   "city"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["remember_me_token"], name: "index_users_on_remember_me_token", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", using: :btree
  add_index "users", ["slug"], name: "index_users_on_slug", unique: true, using: :btree

end
