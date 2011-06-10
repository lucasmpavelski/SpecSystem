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

ActiveRecord::Schema.define(:version => 20110610000529) do

  create_table "answers", :force => true do |t|
    t.integer  "hypothesis_id"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "aproved_facts", :force => true do |t|
    t.integer  "guess_id"
    t.integer  "fact_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "facts", :force => true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "guesses", :force => true do |t|
    t.integer  "hypothesis_id"
    t.integer  "fact_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hypotheses", :force => true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "counter",     :default => 0
  end

  create_table "questions", :force => true do |t|
    t.integer  "fact_id"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rejected_facts", :force => true do |t|
    t.integer  "guess_id"
    t.integer  "fact_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rejected_hypotheses", :force => true do |t|
    t.integer  "guess_id"
    t.integer  "hypothesis_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rule_parts", :force => true do |t|
    t.integer  "fact_id"
    t.integer  "hypothesis_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
