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

ActiveRecord::Schema.define(version: 20130925153033) do

  create_table "firstyears", force: true do |t|
    t.integer  "intern_id"
    t.integer  "ano"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "firstyears", ["intern_id"], name: "index_firstyears_on_intern_id"

  create_table "fychoices", force: true do |t|
    t.integer  "supervisor_id"
    t.integer  "firstyear_id"
    t.date     "data_inicio"
    t.date     "data_fim"
    t.integer  "nota"
    t.integer  "fyoption_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "fychoices", ["firstyear_id"], name: "index_fychoices_on_firstyear_id"
  add_index "fychoices", ["fyoption_id"], name: "index_fychoices_on_fyoption_id"
  add_index "fychoices", ["supervisor_id"], name: "index_fychoices_on_supervisor_id"

  create_table "fycirurgies", force: true do |t|
    t.integer  "supervisor_id"
    t.integer  "firstyear_id"
    t.date     "data_inicio"
    t.date     "data_fim"
    t.integer  "nota"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "fycirurgies", ["firstyear_id"], name: "index_fycirurgies_on_firstyear_id"
  add_index "fycirurgies", ["supervisor_id"], name: "index_fycirurgies_on_supervisor_id"

  create_table "fymedicines", force: true do |t|
    t.integer  "supervisor_id"
    t.integer  "firstyear_id"
    t.date     "data_inicio"
    t.date     "data_fim"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "nota"
  end

  add_index "fymedicines", ["firstyear_id"], name: "index_fymedicines_on_firstyear_id"
  add_index "fymedicines", ["supervisor_id"], name: "index_fymedicines_on_supervisor_id"

  create_table "fyoptions", force: true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fypediatries", force: true do |t|
    t.integer  "supervisor_id"
    t.integer  "firstyear_id"
    t.date     "data_inicio"
    t.date     "data_fim"
    t.integer  "nota"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "fypediatries", ["firstyear_id"], name: "index_fypediatries_on_firstyear_id"
  add_index "fypediatries", ["supervisor_id"], name: "index_fypediatries_on_supervisor_id"

  create_table "fyprimaries", force: true do |t|
    t.integer  "supervisor_id"
    t.integer  "firstyear_id"
    t.date     "data_inicio"
    t.date     "data_fim"
    t.integer  "nota"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "fyprimaries", ["firstyear_id"], name: "index_fyprimaries_on_firstyear_id"
  add_index "fyprimaries", ["supervisor_id"], name: "index_fyprimaries_on_supervisor_id"

  create_table "healthcareunits", force: true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "interns", force: true do |t|
    t.string   "nome"
    t.integer  "numero_mecanografico"
    t.integer  "telefone"
    t.integer  "telemovel"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "services", force: true do |t|
    t.string   "nome"
    t.integer  "healthcareunit_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "services", ["healthcareunit_id"], name: "index_services_on_healthcareunit_id"

  create_table "supervisors", force: true do |t|
    t.string   "nome"
    t.string   "especialidade"
    t.integer  "telefone"
    t.integer  "telemovel"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
