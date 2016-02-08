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

ActiveRecord::Schema.define(version: 20160202235431) do

  create_table "accounts", force: :cascade do |t|
    t.float    "rate"
    t.float    "balance"
    t.float    "min_floor"
    t.float    "min_rate"
    t.string   "acct_name"
    t.boolean  "weekly"
    t.integer  "week_offset"
    t.integer  "week_period"
    t.integer  "day"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.float    "fixed_amount"
    t.boolean  "carry_balance"
  end

  create_table "balance_records", force: :cascade do |t|
    t.date     "date"
    t.float    "balance"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scenarios", force: :cascade do |t|
    t.string   "name"
    t.float    "vest_level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
