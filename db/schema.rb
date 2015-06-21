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

ActiveRecord::Schema.define(version: 20150621171833) do

  create_table "contacts", force: :cascade do |t|
    t.string   "title",                 null: false
    t.string   "first_name",            null: false
    t.string   "last_name",             null: false
    t.string   "email",                 null: false
    t.string   "academic_title",        null: false
    t.string   "affiliated_university", null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "contacts", ["email"], name: "index_contacts_on_email", unique: true

  create_table "papers", force: :cascade do |t|
    t.integer  "contact_id"
    t.string   "title",      null: false
    t.binary   "proposal",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end