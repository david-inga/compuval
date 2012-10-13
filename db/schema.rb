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

ActiveRecord::Schema.define(:version => 20121013180357) do

  create_table "cuenta_por_cobrars", :force => true do |t|
    t.string   "empresa"
    t.string   "numeroDocumento"
    t.decimal  "monto"
    t.datetime "fechaEmision"
    t.datetime "fechaVencimiento"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "cuenta_por_pagars", :force => true do |t|
    t.string   "empresa"
    t.string   "numeroDocumento"
    t.decimal  "monto"
    t.datetime "fechaEmision"
    t.datetime "fechaVencimiento"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "empresas", :force => true do |t|
    t.string   "ruc"
    t.string   "nombre"
    t.string   "direccion"
    t.string   "telefono"
    t.string   "correo"
    t.string   "tipo"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "familia_productos", :force => true do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "movimiento_cajas", :force => true do |t|
    t.string   "tipo"
    t.string   "descripcion"
    t.string   "monto"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "productos", :force => true do |t|
    t.string   "nombre"
    t.decimal  "precio"
    t.integer  "garantia"
    t.integer  "stock"
    t.integer  "stockOptimo"
    t.integer  "margen"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "fampro"
  end

  create_table "venta", :force => true do |t|
    t.string   "comprador"
    t.string   "producto"
    t.integer  "cantidad"
    t.decimal  "montoTotal"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
