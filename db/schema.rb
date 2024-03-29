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

ActiveRecord::Schema.define(version: 20140822020820) do

  create_table "baseurls", force: true do |t|
    t.text     "baseurl"
    t.text     "name"
    t.text     "paging_parameter"
    t.integer  "paging_max"
    t.integer  "paging_add"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "detailpages", force: true do |t|
    t.text     "detail_url"
    t.text     "need_propertys"
    t.text     "property_get_rules"
    t.text     "get_property"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "listpages", force: true do |t|
    t.text     "name"
    t.text     "url"
    t.text     "paging_parameter"
    t.integer  "paging_max"
    t.integer  "paging_add"
    t.text     "link_get_tag"
    t.text     "link_get_attribute"
    t.text     "link_get_value"
    t.text     "keyword"
    t.text     "details_pages"
    t.string   "csvname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
