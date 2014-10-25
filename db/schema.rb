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

ActiveRecord::Schema.define(version: 20141025151453) do

  create_table "accounts", force: true do |t|
    t.string   "name"
    t.integer  "account_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "data_classes", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "data_items", force: true do |t|
    t.string   "name"
    t.integer  "data_class_id"
    t.integer  "data_source_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "data_sources", force: true do |t|
    t.string   "name"
    t.string   "uri"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "data_file"
  end

  create_table "models", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "problem_classes", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "problems", force: true do |t|
    t.string   "name"
    t.integer  "problem_class_id"
    t.integer  "problem_roadmap_id"
    t.integer  "parent_problem_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "question_instances", force: true do |t|
    t.integer  "question_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questions", force: true do |t|
    t.string   "question"
    t.integer  "problem_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roadmap_data_classes", force: true do |t|
    t.integer  "roadmap_id"
    t.integer  "data_class_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roadmap_steps", force: true do |t|
    t.integer  "roadmap_id"
    t.integer  "order"
    t.text     "step"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roadmaps", force: true do |t|
    t.integer  "problem_id"
    t.string   "required_resources"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.integer  "account_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar"
  end

end
