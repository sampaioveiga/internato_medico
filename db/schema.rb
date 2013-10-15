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

ActiveRecord::Schema.define(version: 20131015130519) do

  create_table "firstyears", force: true do |t|
    t.integer  "intern_id"
    t.integer  "ano"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "observacoes"
    t.string   "local"
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
    t.integer  "healthcareunit_id"
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
    t.integer  "healthcareunit_id"
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
    t.integer  "healthcareunit_id"
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
    t.integer  "healthcareunit_id"
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
    t.integer  "healthcareunit_id"
  end

  add_index "fyprimaries", ["firstyear_id"], name: "index_fyprimaries_on_firstyear_id"
  add_index "fyprimaries", ["supervisor_id"], name: "index_fyprimaries_on_supervisor_id"

  create_table "healthcareunits", force: true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "identities", force: true do |t|
    t.string   "nome"
    t.string   "email"
    t.string   "password_digest"
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
    t.integer  "cedula_profissional"
    t.integer  "nota_media"
    t.integer  "nota_final_exame"
  end

  create_table "internships", force: true do |t|
    t.string   "nome"
    t.integer  "supervisor_id"
    t.integer  "healthcareunit_id"
    t.integer  "service_id"
    t.string   "estado"
    t.date     "data_inicio"
    t.date     "data_fim"
    t.string   "observacoes"
    t.integer  "nota"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "intern_id"
  end

  add_index "internships", ["healthcareunit_id"], name: "index_internships_on_healthcareunit_id"
  add_index "internships", ["service_id"], name: "index_internships_on_service_id"
  add_index "internships", ["supervisor_id"], name: "index_internships_on_supervisor_id"

  create_table "services", force: true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "supervisors", force: true do |t|
    t.string   "nome"
    t.string   "especialidade"
    t.integer  "telefone"
    t.integer  "telemovel"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "cedula_profissional"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "nome"
    t.boolean  "status"
    t.boolean  "admin",           default: false
  end

end
