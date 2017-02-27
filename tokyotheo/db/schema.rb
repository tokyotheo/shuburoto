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

ActiveRecord::Schema.define(:version => 20100718103927) do

  create_table "instructors", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "first_name_kana"
    t.string   "last_name_kana"
    t.integer  "lecture_id"
    t.integer  "report_task_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lectures", :force => true do |t|
    t.integer  "no",          :null => false
    t.string   "title"
    t.string   "description"
    t.string   "category1"
    t.string   "category2"
    t.integer  "credit"
    t.integer  "price"
    t.string   "instructor"
    t.string   "purpose"
    t.text     "plan"
    t.string   "evaluation"
    t.text     "textbook"
    t.text     "remark"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lessons", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.string   "lecture_title"
    t.integer  "lecture",       :null => false
    t.string   "instructor"
    t.string   "url"
    t.text     "remark"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "purchases", :force => true do |t|
    t.string   "user_id"
    t.integer  "lecture_no"
    t.date     "start"
    t.date     "end"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "report_tasks", :force => true do |t|
    t.string   "title"
    t.integer  "lecture_id"
    t.integer  "instructor_id"
    t.text     "task"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "user_id"
    t.string   "password"
    t.string   "email"
    t.string   "name"
    t.boolean  "admin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
