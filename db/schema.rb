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

ActiveRecord::Schema.define(version: 20160828023210) do

  create_table "movies", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.text     "cinemanum"
    t.date     "date"
    t.integer  "tix1"
    t.integer  "tix2"
    t.integer  "tix3"
    t.integer  "tix4"
    t.datetime "time1s"
    t.datetime "time1f"
    t.datetime "time2s"
    t.datetime "time2f"
    t.datetime "time3s"
    t.datetime "time3f"
    t.datetime "time4s"
    t.datetime "time4f"
    t.string   "img"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
