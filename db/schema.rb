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

ActiveRecord::Schema.define(version: 20150816050610) do

  create_table "followeerelationships", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "followee_id"
  end

  create_table "followerrelationships", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "follower_id"
  end

  create_table "friends", force: true do |t|
    t.integer "user_id"
    t.integer "friend_id"
  end

  create_table "todolists", force: true do |t|
    t.string   "todoitems"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "duration"
    t.integer  "user_id"
    t.date     "start"
    t.date     "end"
  end

  create_table "users", force: true do |t|
    t.string   "account_name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "zombies", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
