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

ActiveRecord::Schema.define(version: 20160515024503) do

  create_table "comments", force: :cascade do |t|
    t.text     "content",    limit: 65535
    t.integer  "user_id",    limit: 4
    t.integer  "menu_id",    limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "comments", ["menu_id"], name: "index_comments_on_menu_id", using: :btree
  add_index "comments", ["user_id", "created_at"], name: "index_comments_on_user_id_and_created_at", using: :btree
  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

  create_table "menus", force: :cascade do |t|
    t.string   "menuName",            limit: 255
    t.string   "content",             limit: 255
    t.integer  "user_id",             limit: 4
    t.integer  "tag_id",              limit: 4
    t.datetime "created_at",                                           null: false
    t.datetime "updated_at",                                           null: false
    t.string   "attach_file_name",    limit: 255
    t.string   "attach_content_type", limit: 255
    t.integer  "attach_file_size",    limit: 4
    t.datetime "attach_updated_at"
    t.string   "pic_file_name",       limit: 255
    t.string   "pic_content_type",    limit: 255
    t.integer  "pic_file_size",       limit: 4
    t.datetime "pic_updated_at"
    t.string   "imgs",                limit: 255, default: "--- []\n"
  end

  add_index "menus", ["tag_id"], name: "index_menus_on_tag_id", using: :btree
  add_index "menus", ["user_id", "created_at"], name: "index_menus_on_user_id_and_created_at", using: :btree
  add_index "menus", ["user_id"], name: "index_menus_on_user_id", using: :btree

  create_table "relationships", force: :cascade do |t|
    t.integer  "follower_id", limit: 4
    t.integer  "followed_id", limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "relationships", ["followed_id"], name: "index_relationships_on_followed_id", using: :btree
  add_index "relationships", ["follower_id", "followed_id"], name: "index_relationships_on_follower_id_and_followed_id", unique: true, using: :btree
  add_index "relationships", ["follower_id"], name: "index_relationships_on_follower_id", using: :btree

  create_table "tags", force: :cascade do |t|
    t.string   "tag",        limit: 255
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "tags", ["user_id"], name: "index_tags_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "name",                   limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "comments", "menus"
  add_foreign_key "comments", "users"
  add_foreign_key "menus", "tags"
  add_foreign_key "menus", "users"
  add_foreign_key "tags", "users"
end
