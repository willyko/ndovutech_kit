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

ActiveRecord::Schema.define(version: 20150713082701) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "kits", force: :cascade do |t|
    t.string   "title"
    t.text     "mission"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "tool_id"
  end

  add_index "kits", ["tool_id"], name: "index_kits_on_tool_id", using: :btree

  create_table "tools", force: :cascade do |t|
    t.string   "name"
    t.text     "url"
    t.text     "description"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "kit_id"
    t.string   "thumbnail_url"
    t.string   "embedly_title"
    t.text     "embedly_description"
  end

  add_index "tools", ["kit_id"], name: "index_tools_on_kit_id", using: :btree

  add_foreign_key "kits", "tools"
  add_foreign_key "tools", "kits"
end
