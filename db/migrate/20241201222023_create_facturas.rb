class CreateFacturas < ActiveRecord::Migration[7.2]
  def change
    create_table :facturas do |t|
      t.references :pedido, null: false, foreign_key: true
      t.decimal :monto
      t.datetime :fecha_pago

      t.timestamps
    end
  end
end
