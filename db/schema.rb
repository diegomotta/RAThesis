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

ActiveRecord::Schema.define(version: 20150602225226) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "audios", force: true do |t|
    t.string   "image"
    t.string   "document"
    t.string   "audio"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "document_file_name"
    t.string   "document_content_type"
    t.integer  "document_file_size"
    t.datetime "document_updated_at"
    t.string   "audio_file_name"
    t.string   "audio_content_type"
    t.integer  "audio_file_size"
    t.datetime "audio_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "consulta_clientes", force: true do |t|
    t.string   "nombre"
    t.string   "correo"
    t.string   "telefono"
    t.string   "descripcion"
    t.integer  "empresa_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "consulta_clientes", ["empresa_id"], name: "index_consulta_clientes_on_empresa_id", using: :btree

  create_table "detalles", force: true do |t|
    t.text     "descripción"
    t.text     "elaboración"
    t.text     "presentación"
    t.text     "packaging"
    t.text     "origen"
    t.text     "secanza"
    t.text     "característica"
    t.integer  "item_producto_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "detalles", ["item_producto_id"], name: "index_detalles_on_item_producto_id", using: :btree

  create_table "empresas", force: true do |t|
    t.string   "nombre"
    t.string   "actividad"
    t.string   "país"
    t.string   "provincia"
    t.string   "localidad"
    t.string   "dirección"
    t.string   "telefono"
    t.text     "misión"
    t.text     "visión"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "galeria_imagenes", force: true do |t|
    t.string   "titulo"
    t.text     "descripcion"
    t.integer  "item_producto_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "galeria_imagenes", ["item_producto_id"], name: "index_galeria_imagenes_on_item_producto_id", using: :btree

  create_table "galeria_prep_mates", force: true do |t|
    t.string   "título"
    t.text     "descrición"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "galeria_procesos", force: true do |t|
    t.string   "título"
    t.text     "descrición"
    t.integer  "producto_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "galeria_procesos", ["producto_id"], name: "index_galeria_procesos_on_producto_id", using: :btree

  create_table "galeria_props", force: true do |t|
    t.integer  "prop_general_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "galeria_props", ["prop_general_id"], name: "index_galeria_props_on_prop_general_id", using: :btree

  create_table "informacion_empresas", force: true do |t|
    t.string   "itemTitulo"
    t.integer  "empresa_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "informacion_empresas", ["empresa_id"], name: "index_informacion_empresas_on_empresa_id", using: :btree

  create_table "item_de_infos", force: true do |t|
    t.string   "título"
    t.string   "descripción"
    t.integer  "informacion_empresa_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "item_de_infos", ["informacion_empresa_id"], name: "index_item_de_infos_on_informacion_empresa_id", using: :btree

  create_table "item_productos", force: true do |t|
    t.string   "marca"
    t.string   "tipo"
    t.integer  "producto_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "item_productos", ["producto_id"], name: "index_item_productos_on_producto_id", using: :btree

  create_table "noticia_empresas", force: true do |t|
    t.string   "titulo"
    t.text     "descripcion"
    t.integer  "empresa_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "noticia_empresas", ["empresa_id"], name: "index_noticia_empresas_on_empresa_id", using: :btree

  create_table "opinions", force: true do |t|
    t.string   "nombre"
    t.string   "nacionalidad"
    t.string   "pais"
    t.string   "ciudad"
    t.string   "comentario"
    t.integer  "item_producto_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "opinions", ["item_producto_id"], name: "index_opinions_on_item_producto_id", using: :btree

  create_table "preparar_mates", force: true do |t|
    t.string   "título"
    t.text     "descrición"
    t.integer  "producto_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "preparar_mates", ["producto_id"], name: "index_preparar_mates_on_producto_id", using: :btree

  create_table "productos", force: true do |t|
    t.string   "titulo"
    t.integer  "empresa_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "productos", ["empresa_id"], name: "index_productos_on_empresa_id", using: :btree

  create_table "prop_especificas", force: true do |t|
    t.string   "item"
    t.text     "descripción"
    t.integer  "detalle_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "prop_especificas", ["detalle_id"], name: "index_prop_especificas_on_detalle_id", using: :btree

  create_table "prop_general_items", force: true do |t|
    t.string   "item"
    t.text     "descripción"
    t.integer  "prop_general_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "prop_general_items", ["prop_general_id"], name: "index_prop_general_items_on_prop_general_id", using: :btree

  create_table "prop_generals", force: true do |t|
    t.text     "descripción"
    t.integer  "producto_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "prop_generals", ["producto_id"], name: "index_prop_generals_on_producto_id", using: :btree

  create_table "ubicacion_geos", force: true do |t|
    t.float    "latitude"
    t.float    "longitude"
    t.string   "address"
    t.text     "description"
    t.string   "title"
    t.integer  "empresa_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ubicacion_geos", ["empresa_id"], name: "index_ubicacion_geos_on_empresa_id", using: :btree

  create_table "videos", force: true do |t|
    t.string   "titulo"
    t.string   "url"
    t.text     "descripcion"
    t.integer  "empresa_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "videos", ["empresa_id"], name: "index_videos_on_empresa_id", using: :btree

  create_table "videos_productos", force: true do |t|
    t.string   "titulo"
    t.string   "descripcion"
    t.string   "url"
    t.integer  "item_producto_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "videos_productos", ["item_producto_id"], name: "index_videos_productos_on_item_producto_id", using: :btree

end
