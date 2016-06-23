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

ActiveRecord::Schema.define(version: 20160617230123) do

  create_table "areas", force: true do |t|
    t.string   "nombre"
    t.string   "titulo"
    t.integer  "sede_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cargos", force: true do |t|
    t.string   "nombre"
    t.string   "titulo"
    t.integer  "area_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "documentos", force: true do |t|
    t.integer  "num_expediente"
    t.string   "asunto"
    t.integer  "folio"
    t.string   "ubic_archivo"
    t.boolean  "rpta"
    t.integer  "firma"
    t.integer  "tipo_doc_id"
    t.integer  "empleado_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "empleados", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "nombres"
    t.string   "apellidos"
    t.string   "telefono"
    t.string   "direccion"
    t.integer  "area_id"
    t.integer  "cargo_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "empleados", ["email"], name: "index_empleados_on_email", unique: true
  add_index "empleados", ["reset_password_token"], name: "index_empleados_on_reset_password_token", unique: true

  create_table "operacions", force: true do |t|
    t.string   "remitente"
    t.string   "destinatario"
    t.text     "descripcion"
    t.integer  "empleado_id"
    t.integer  "tipo_oper_id"
    t.integer  "documento_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sedes", force: true do |t|
    t.string   "nombre"
    t.string   "ciudad"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_docs", force: true do |t|
    t.string   "nombre"
    t.string   "titulo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_opers", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
