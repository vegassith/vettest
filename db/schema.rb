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

ActiveRecord::Schema.define(version: 20150413215353) do

  create_table "appointments", force: :cascade do |t|
    t.date     "date",                   null: false
    t.integer  "doctor_id",  limit: 4,   null: false
    t.string   "pet",        limit: 255, null: false
    t.string   "customer",   limit: 255, null: false
    t.boolean  "reminder",   limit: 1
    t.string   "reason",     limit: 255, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "appointments", ["doctor_id"], name: "index_appointments_on_doctor_id", using: :btree

  create_table "doctors", force: :cascade do |t|
    t.string   "name",       limit: 35
    t.string   "address",    limit: 255
    t.string   "city",       limit: 255
    t.string   "state",      limit: 255
    t.integer  "zip",        limit: 8
    t.string   "school",     limit: 255
    t.integer  "years",      limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "pets", force: :cascade do |t|
    t.string   "name",         limit: 35, null: false
    t.integer  "customer_id",  limit: 4
    t.integer  "typeofpet_id", limit: 4
    t.string   "breed",        limit: 35, null: false
    t.integer  "age",          limit: 4,  null: false
    t.integer  "weight",       limit: 4,  null: false
    t.date     "lastvisit",               null: false
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "pets", ["customer_id"], name: "index_pets_on_customer_id", using: :btree
  add_index "pets", ["typeofpet_id"], name: "index_pets_on_typeofpet_id", using: :btree

  create_table "typeofpets", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
