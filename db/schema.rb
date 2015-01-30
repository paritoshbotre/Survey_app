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

ActiveRecord::Schema.define(version: 20150130120202) do

  create_table "husbands", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "options", force: :cascade do |t|
    t.string   "description"
    t.integer  "question_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "options", ["question_id"], name: "index_options_on_question_id"

  create_table "questions", force: :cascade do |t|
    t.string   "description"
    t.integer  "survey_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "questions", ["survey_id"], name: "index_questions_on_survey_id"

  create_table "responses", force: :cascade do |t|
    t.integer  "option_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "responses", ["option_id"], name: "index_responses_on_option_id"
  add_index "responses", ["user_id"], name: "index_responses_on_user_id"

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "surveys", force: :cascade do |t|
    t.string   "name"
    t.string   "survey_type"
    t.date     "conducted_on"
    t.integer  "count_people"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "questions_count"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "age"
    t.string   "gender"
    t.integer  "role_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
  end

  add_index "users", ["role_id"], name: "index_users_on_role_id"

  create_table "wives", force: :cascade do |t|
    t.string   "name"
    t.integer  "husband_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
