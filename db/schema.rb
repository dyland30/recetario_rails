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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120331113058) do

  create_table "categoria", :force => true do |t|
    t.string   "nombre",     :limit => 100
    t.string   "imagen",     :limit => 20
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categoria_ingredientes", :force => true do |t|
    t.string   "nombre",     :limit => 100
    t.string   "imagen",     :limit => 20
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comentarios", :force => true do |t|
    t.integer  "platos_id"
    t.integer  "usuarios_id"
    t.string   "comentario"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comentarios", ["platos_id", "usuarios_id"], :name => "index_comentarios_on_platos_id_and_usuarios_id"

  create_table "ingredientes", :force => true do |t|
    t.integer  "categoria_ingredientes_id"
    t.string   "nombre",                    :limit => 80
    t.string   "umedida",                   :limit => 5
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ingredientes", ["categoria_ingredientes_id"], :name => "index_ingredientes_on_categoria_ingredientes_id"

  create_table "plato_ingredientes", :force => true do |t|
    t.integer  "platos_id"
    t.integer  "ingredientes_id"
    t.decimal  "cantidad"
    t.boolean  "flg_principal"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "plato_ingredientes", ["platos_id", "ingredientes_id"], :name => "index_plato_ingredientes_on_platos_id_and_ingredientes_id"

  create_table "platos", :force => true do |t|
    t.integer  "usuarios_id"
    t.integer  "categoria_id"
    t.integer  "regions_id"
    t.string   "nombre",             :limit => 100
    t.integer  "tiempo_preparacion"
    t.integer  "tiempo_coccion"
    t.integer  "visitas"
    t.text     "preparacion"
    t.integer  "sum_ratings"
    t.integer  "cant_ratings"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "platos", ["categoria_id"], :name => "index_platos_on_categoria_id"
  add_index "platos", ["regions_id"], :name => "index_platos_on_regions_id"
  add_index "platos", ["usuarios_id"], :name => "index_platos_on_usuarios_id"

  create_table "regions", :force => true do |t|
    t.string   "nombre",     :limit => 30
    t.string   "imagen",     :limit => 20
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usuarios", :force => true do |t|
    t.string   "login",      :limit => 16, :null => false
    t.string   "nombre",     :limit => 25
    t.string   "apellido",   :limit => 30
    t.string   "email",      :limit => 60
    t.integer  "puntaje"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "usuarios", ["email"], :name => "index_usuarios_on_email"

end
