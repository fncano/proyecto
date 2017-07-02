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

ActiveRecord::Schema.define(version: 20170617191947) do

  create_table "assignments", force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["role_id"], name: "index_assignments_on_role_id"
    t.index ["user_id"], name: "index_assignments_on_user_id"
  end

  create_table "clientes", force: :cascade do |t|
    t.string "documento"
    t.integer "numero"
    t.string "nombre"
    t.string "direcion"
    t.string "lugar"
    t.string "telefono"
    t.string "movil"
    t.string "correo"
    t.string "empleado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "documentos", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "empleados", force: :cascade do |t|
    t.string "documento"
    t.integer "numero"
    t.string "nombre"
    t.string "direcion"
    t.string "lugar"
    t.string "telefono"
    t.string "movil"
    t.string "correo"
    t.string "usuario"
    t.string "contrasena"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "documento_id"
    t.index ["documento_id"], name: "index_empleados_on_documento_id"
  end

  create_table "insumos", force: :cascade do |t|
    t.date "fecha"
    t.integer "num_fact"
    t.string "proveedor"
    t.string "documento"
    t.integer "numero"
    t.string "empleado"
    t.integer "cant"
    t.string "detalle"
    t.integer "val_uni"
    t.integer "total"
    t.integer "subtotal"
    t.integer "iva"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "marcas", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pedidos", force: :cascade do |t|
    t.date "fecha"
    t.integer "num_pedi"
    t.string "cliente"
    t.date "fecha_entrega"
    t.string "empleado"
    t.integer "cant"
    t.string "prenda"
    t.string "pieza"
    t.string "talla"
    t.integer "val_uni"
    t.integer "total"
    t.integer "subtotal"
    t.integer "iva"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "perdidas", force: :cascade do |t|
    t.date "fecha"
    t.integer "num_doc"
    t.string "cliente"
    t.date "fecha_entrega"
    t.string "empleado"
    t.integer "cant"
    t.string "prenda"
    t.string "pieza"
    t.string "talla"
    t.integer "val_uni"
    t.integer "total"
    t.integer "subtotal"
    t.integer "iva"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "producciones", force: :cascade do |t|
    t.date "fecha"
    t.integer "num_fact"
    t.string "cliente"
    t.date "fecha_entre"
    t.string "empleado"
    t.integer "cant"
    t.string "prenda"
    t.string "pieza"
    t.string "talla"
    t.integer "val_uni"
    t.integer "total"
    t.integer "subtotal"
    t.integer "iva"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "productos", force: :cascade do |t|
    t.string "nombre"
    t.integer "precio"
    t.integer "cantidad"
    t.integer "iva"
    t.integer "marca_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["marca_id"], name: "index_productos_on_marca_id"
  end

  create_table "programaciones", force: :cascade do |t|
    t.date "fecha"
    t.integer "num_progr"
    t.string "cliente"
    t.date "fecha_entrega"
    t.string "empleado"
    t.integer "cant"
    t.string "prenda"
    t.string "pieza"
    t.string "talla"
    t.integer "val_uni"
    t.integer "total"
    t.integer "subtotal"
    t.integer "iva"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "ventas", force: :cascade do |t|
    t.date "fecha"
    t.integer "num_fact"
    t.string "cliente"
    t.date "fecha_entrega"
    t.string "empleado"
    t.integer "cant"
    t.string "prenda"
    t.string "pieza"
    t.string "talla"
    t.integer "val_uni"
    t.integer "total"
    t.integer "subtotal"
    t.integer "iva"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
