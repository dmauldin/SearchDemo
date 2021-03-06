# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090504234731) do

  create_table "genes", :force => true do |t|
    t.string "name"
  end

  create_table "keyword", :id => false, :force => true do |t|
    t.integer "object_id"
    t.integer "keyword_id"
    t.integer "primary_id"
    t.string  "keyword"
    t.string  "keyword_normalized"
    t.integer "keyword_type_id"
    t.integer "object_class_id"
  end

  create_table "keywords", :force => true do |t|
    t.string "name"
  end

  create_table "markers", :force => true do |t|
    t.string "name"
  end

  create_table "searches", :force => true do |t|
    t.string   "searchterm"
    t.string   "normalizedterm"
    t.integer  "keyword_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
