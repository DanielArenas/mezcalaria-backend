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

ActiveRecord::Schema.define(version: 20170627160308) do

  create_table "estados", force: :cascade do |t|
    t.string   "nombre",     limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "place",      limit: 255
    t.date     "date_event"
    t.string   "baner",      limit: 255
    t.boolean  "is_free",    limit: 1
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.integer  "language",   limit: 4,   default: 1
    t.string   "start_time", limit: 255
    t.string   "end_time",   limit: 255
  end

  create_table "magueyes", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.string   "sub_title",   limit: 255
    t.text     "description", limit: 65535
    t.string   "image",       limit: 255
    t.integer  "language",    limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "marcas", force: :cascade do |t|
    t.string   "nombre",     limit: 255
    t.string   "logotipo",   limit: 255
    t.string   "direccion",  limit: 255
    t.string   "correo",     limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mezcales", force: :cascade do |t|
    t.integer  "tipo_mezcal_id",     limit: 4
    t.integer  "tipo_maguey_id",     limit: 4
    t.integer  "tipo_destilado_id",  limit: 4
    t.integer  "marca_id",           limit: 4
    t.decimal  "precio_promedio",                  precision: 10
    t.integer  "zona_produccion_id", limit: 4
    t.string   "maestro_mezcalero",  limit: 255
    t.boolean  "certificado",        limit: 1
    t.text     "lugares_venta",      limit: 65535
    t.text     "comentario_maestro", limit: 65535
    t.string   "fotografia",         limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "nombre",             limit: 255
    t.text     "history_mezcal",     limit: 65535
    t.boolean  "agave_distillation", limit: 1
    t.integer  "language",           limit: 4,                    default: 1
  end

  add_index "mezcales", ["marca_id"], name: "index_mezcales_on_marca_id", using: :btree
  add_index "mezcales", ["tipo_destilado_id"], name: "index_mezcales_on_tipo_destilado_id", using: :btree
  add_index "mezcales", ["tipo_maguey_id"], name: "index_mezcales_on_tipo_maguey_id", using: :btree
  add_index "mezcales", ["tipo_mezcal_id"], name: "index_mezcales_on_tipo_mezcal_id", using: :btree
  add_index "mezcales", ["zona_produccion_id"], name: "index_mezcales_on_zona_produccion_id", using: :btree

  create_table "municipios", force: :cascade do |t|
    t.string   "nombre",     limit: 255
    t.integer  "estado_id",  limit: 4
    t.integer  "region_id",  limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "municipios", ["estado_id"], name: "index_municipios_on_estado_id", using: :btree
  add_index "municipios", ["region_id"], name: "index_municipios_on_region_id", using: :btree

  create_table "news", force: :cascade do |t|
    t.string   "tittle",      limit: 255
    t.text     "description", limit: 65535
    t.string   "video",       limit: 255
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.integer  "language",    limit: 4,     default: 1
    t.string   "photo",       limit: 255
  end

  create_table "regiones", force: :cascade do |t|
    t.string   "nombre",     limit: 255
    t.integer  "estado_id",  limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "regiones", ["estado_id"], name: "index_regiones_on_estado_id", using: :btree

  create_table "roles", force: :cascade do |t|
    t.string   "nombre",     limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sponsores", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.string   "address",      limit: 255
    t.string   "email",        limit: 255
    t.string   "web_page",     limit: 255
    t.text     "description",  limit: 65535
    t.string   "logo_sponsor", limit: 255
    t.boolean  "outstanding",  limit: 1
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.integer  "language",     limit: 4,     default: 1
  end

  create_table "tipo_destilados", force: :cascade do |t|
    t.string   "nombre",     limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_magueyes", force: :cascade do |t|
    t.string   "nombre",     limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_mezcales", force: :cascade do |t|
    t.string   "nombre",     limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "email",           limit: 255
    t.string   "password_digest", limit: 255
    t.integer  "rol_id",          limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "access_token",    limit: 255
    t.string   "idiom",           limit: 255
    t.string   "name",            limit: 255
    t.integer  "language",        limit: 4,   default: 1
  end

  add_index "usuarios", ["rol_id"], name: "index_usuarios_on_rol_id", using: :btree

  create_table "zona_producciones", force: :cascade do |t|
    t.string   "localidad",    limit: 255
    t.integer  "municipio_id", limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "zona_producciones", ["municipio_id"], name: "index_zona_producciones_on_municipio_id", using: :btree

end
