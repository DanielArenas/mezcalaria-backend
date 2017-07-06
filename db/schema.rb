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

ActiveRecord::Schema.define(version: 20170706000224) do

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

  create_table "rails_push_notifications_apns_apps", force: :cascade do |t|
    t.text     "apns_dev_cert",  limit: 65535
    t.text     "apns_prod_cert", limit: 65535
    t.boolean  "sandbox_mode",   limit: 1
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "rails_push_notifications_gcm_apps", force: :cascade do |t|
    t.string   "gcm_key",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "rails_push_notifications_mpns_apps", force: :cascade do |t|
    t.text     "cert",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "rails_push_notifications_notifications", force: :cascade do |t|
    t.text     "destinations", limit: 65535
    t.integer  "app_id",       limit: 4
    t.string   "app_type",     limit: 255
    t.text     "data",         limit: 65535
    t.text     "results",      limit: 65535
    t.integer  "success",      limit: 4
    t.integer  "failed",       limit: 4
    t.boolean  "sent",         limit: 1,     default: false
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
  end

  add_index "rails_push_notifications_notifications", ["app_id", "app_type", "sent"], name: "app_and_sent_index_on_rails_push_notifications", using: :btree

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

  create_table "rpush_apps", force: :cascade do |t|
    t.string   "name",                    limit: 255,               null: false
    t.string   "environment",             limit: 255
    t.text     "certificate",             limit: 65535
    t.string   "password",                limit: 255
    t.integer  "connections",             limit: 4,     default: 1, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "type",                    limit: 255,               null: false
    t.string   "auth_key",                limit: 255
    t.string   "client_id",               limit: 255
    t.string   "client_secret",           limit: 255
    t.string   "access_token",            limit: 255
    t.datetime "access_token_expiration"
  end

  create_table "rpush_feedback", force: :cascade do |t|
    t.string   "device_token", limit: 64, null: false
    t.datetime "failed_at",               null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "app_id",       limit: 4
  end

  add_index "rpush_feedback", ["device_token"], name: "index_rpush_feedback_on_device_token", using: :btree

  create_table "rpush_notifications", force: :cascade do |t|
    t.integer  "badge",             limit: 4
    t.string   "device_token",      limit: 64
    t.string   "sound",             limit: 255,      default: "default"
    t.text     "alert",             limit: 65535
    t.text     "data",              limit: 65535
    t.integer  "expiry",            limit: 4,        default: 86400
    t.boolean  "delivered",         limit: 1,        default: false,     null: false
    t.datetime "delivered_at"
    t.boolean  "failed",            limit: 1,        default: false,     null: false
    t.datetime "failed_at"
    t.integer  "error_code",        limit: 4
    t.text     "error_description", limit: 65535
    t.datetime "deliver_after"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "alert_is_json",     limit: 1,        default: false
    t.string   "type",              limit: 255,                          null: false
    t.string   "collapse_key",      limit: 255
    t.boolean  "delay_while_idle",  limit: 1,        default: false,     null: false
    t.text     "registration_ids",  limit: 16777215
    t.integer  "app_id",            limit: 4,                            null: false
    t.integer  "retries",           limit: 4,        default: 0
    t.string   "uri",               limit: 255
    t.datetime "fail_after"
    t.boolean  "processing",        limit: 1,        default: false,     null: false
    t.integer  "priority",          limit: 4
    t.text     "url_args",          limit: 65535
    t.string   "category",          limit: 255
    t.boolean  "content_available", limit: 1,        default: false
    t.text     "notification",      limit: 65535
  end

  add_index "rpush_notifications", ["delivered", "failed"], name: "index_rpush_notifications_multi", using: :btree

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
    t.string   "phone",        limit: 255
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
    t.integer  "language",        limit: 4,     default: 1
    t.text     "device_id",       limit: 65535
    t.string   "type_device",     limit: 255
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
