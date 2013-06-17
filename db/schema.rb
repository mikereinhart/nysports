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

ActiveRecord::Schema.define(:version => 20130617165340) do

  create_table "feeds", :force => true do |t|
    t.string   "name"
    t.text     "summary"
    t.string   "feed_url"
    t.datetime "published_at"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "site_id"
    t.string   "thumbnail"
    t.string   "thumbnail_height"
    t.string   "thumbnail_width"
    t.string   "team_article_name"
    t.integer  "team_id"
  end

  create_table "feeds_users", :id => false, :force => true do |t|
    t.integer "feed_id"
    t.integer "user_id"
  end

  create_table "sites", :force => true do |t|
    t.string   "name"
    t.string   "site_url"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "team_id"
  end

  create_table "teams", :force => true do |t|
    t.string   "name"
    t.string   "logo_url"
    t.string   "official_url"
    t.string   "twitter_url"
    t.string   "facebook_url"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "teams_users", :id => false, :force => true do |t|
    t.integer "team_id"
    t.integer "user_id"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "password_digest"
    t.string   "email"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.boolean  "admin",           :default => false
  end

end
