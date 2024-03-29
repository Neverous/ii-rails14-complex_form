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

ActiveRecord::Schema.define(version: 20141102155857) do

  create_table "categories", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories_projects", id: false, force: true do |t|
    t.integer "category_id"
    t.integer "project_id"
  end

  create_table "milestones", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "milestones", ["project_id"], name: "index_milestones_on_project_id"

  create_table "milestones_tasks", id: false, force: true do |t|
    t.integer "milestone_id"
    t.integer "task_id"
  end

  create_table "projects", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects_milestones", id: false, force: true do |t|
    t.integer "project_id"
    t.integer "milestone_id"
  end

  create_table "tasks", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tasks", ["project_id"], name: "index_tasks_on_project_id"

end
