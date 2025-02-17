# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2024_12_03_195900) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clientes", force: :cascade do |t|
    t.string "nombre"
    t.string "direccion"
    t.string "telefono"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "factura_productos", force: :cascade do |t|
    t.bigint "factura_id", null: false
    t.bigint "producto_id", null: false
    t.integer "cantidad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["factura_id"], name: "index_factura_productos_on_factura_id"
    t.index ["producto_id"], name: "index_factura_productos_on_producto_id"
  end

  create_table "facturas", force: :cascade do |t|
    t.bigint "pedido_id", null: false
    t.decimal "monto"
    t.datetime "fecha_pago"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pedido_id"], name: "index_facturas_on_pedido_id"
  end

  create_table "inventarios", force: :cascade do |t|
    t.bigint "producto_id", null: false
    t.integer "cantidad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["producto_id"], name: "index_inventarios_on_producto_id"
  end

  create_table "pedidos", force: :cascade do |t|
    t.bigint "cliente_id", null: false
    t.string "estado"
    t.datetime "fecha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "codigo"
    t.index ["cliente_id"], name: "index_pedidos_on_cliente_id"
  end

  create_table "productos", force: :cascade do |t|
    t.string "nombre"
    t.decimal "precio"
    t.integer "stock"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "cantidad"
    t.text "descripcion"
  end

  add_foreign_key "factura_productos", "facturas"
  add_foreign_key "factura_productos", "productos"
  add_foreign_key "facturas", "pedidos"
  add_foreign_key "inventarios", "productos"
  add_foreign_key "pedidos", "clientes"
end
