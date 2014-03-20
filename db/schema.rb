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

ActiveRecord::Schema.define(version: 20140318145135) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "firstyears", force: true do |t|
    t.integer  "intern_id"
    t.integer  "ano"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "observacoes"
    t.string   "local"
  end

  add_index "firstyears", ["intern_id"], name: "index_firstyears_on_intern_id", using: :btree

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

  add_index "fychoices", ["firstyear_id"], name: "index_fychoices_on_firstyear_id", using: :btree
  add_index "fychoices", ["fyoption_id"], name: "index_fychoices_on_fyoption_id", using: :btree
  add_index "fychoices", ["supervisor_id"], name: "index_fychoices_on_supervisor_id", using: :btree

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

  add_index "fycirurgies", ["firstyear_id"], name: "index_fycirurgies_on_firstyear_id", using: :btree
  add_index "fycirurgies", ["supervisor_id"], name: "index_fycirurgies_on_supervisor_id", using: :btree

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

  add_index "fymedicines", ["firstyear_id"], name: "index_fymedicines_on_firstyear_id", using: :btree
  add_index "fymedicines", ["supervisor_id"], name: "index_fymedicines_on_supervisor_id", using: :btree

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

  add_index "fypediatries", ["firstyear_id"], name: "index_fypediatries_on_firstyear_id", using: :btree
  add_index "fypediatries", ["supervisor_id"], name: "index_fypediatries_on_supervisor_id", using: :btree

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

  add_index "fyprimaries", ["firstyear_id"], name: "index_fyprimaries_on_firstyear_id", using: :btree
  add_index "fyprimaries", ["supervisor_id"], name: "index_fyprimaries_on_supervisor_id", using: :btree

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
    t.integer  "cedula_profissional"
    t.integer  "nota_media"
    t.integer  "nota_final_exame"
    t.integer  "internship_name_id"
    t.integer  "supervisor_id"
  end

  add_index "interns", ["cedula_profissional"], name: "index_interns_on_cedula_profissional", unique: true, using: :btree
  add_index "interns", ["numero_mecanografico"], name: "index_interns_on_numero_mecanografico", unique: true, using: :btree

  create_table "internship_names", force: true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "internships", force: true do |t|
    t.string   "nome"
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

  add_index "internships", ["healthcareunit_id"], name: "index_internships_on_healthcareunit_id", using: :btree
  add_index "internships", ["service_id"], name: "index_internships_on_service_id", using: :btree

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

  add_index "supervisors", ["cedula_profissional"], name: "index_supervisors_on_cedula_profissional", unique: true, using: :btree

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "nome"
    t.boolean  "status",          default: false
    t.boolean  "admin",           default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

end
