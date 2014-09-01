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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 2014072203253945) do

  create_table "mems", :force => true do |t|
    t.string   "recsts",     :limit => 1, :default => "0"
    t.string   "pwd"
    t.integer  "age"
    t.string   "userid"
    t.string   "nc"
    t.string   "email"
    t.string   "addr"
    t.string   "mobile"
    t.integer  "pic_id"
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
  end

  create_table "pics", :force => true do |t|
    t.string   "recsts",     :limit => 1, :default => "0"
    t.string   "title"
    t.string   "piccd"
    t.string   "path"
    t.integer  "idcd"
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
  end

  create_table "refcds", :force => true do |t|
    t.string   "recsts",     :limit => 1, :default => "0"
    t.string   "groupcd"
    t.string   "typcd"
    t.string   "fdesc"
    t.string   "val1"
    t.string   "val2"
    t.string   "val"
    t.string   "url"
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
  end

  create_table "team_mems", :force => true do |t|
    t.string   "recsts",     :limit => 1, :default => "0"
    t.integer  "team_id"
    t.integer  "mem_id"
    t.string   "role"
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
  end

  create_table "teams", :force => true do |t|
    t.string   "recsts",     :limit => 1, :default => "0"
    t.string   "name"
    t.string   "logo"
    t.string   "manifesto"
    t.integer  "success"
    t.integer  "failure"
    t.integer  "score"
    t.integer  "captain"
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
  end

  create_table "todos", :force => true do |t|
    t.string   "title"
    t.string   "done",       :limit => 1, :default => "1"
    t.string   "recsts",     :limit => 1, :default => "0"
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
  end

end
