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

ActiveRecord::Schema.define(version: 20140623214039) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chairs", force: true do |t|
    t.string   "name",         null: false
    t.integer  "category_id",  null: false
    t.text     "description"
    t.string   "manufacturer"
    t.string   "location",     null: false
    t.integer  "user_id",      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reviews", force: true do |t|
    t.text     "body",       null: false
    t.decimal  "rating",     null: false
    t.integer  "user_id",    null: false
    t.integer  "chair_id",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username",   null: false
    t.string   "password",   null: false
    t.string   "email",      null: false
    t.text     "picture"
    t.string   "role",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "votes", force: true do |t|
    t.integer  "review_id",  null: false
    t.integer  "user_id",    null: false
    t.integer  "like",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
