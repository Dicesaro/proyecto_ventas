class CreateFacturaProductos < ActiveRecord::Migration[7.2]
  def change
    create_table :factura_productos do |t|
      t.references :factura, null: false, foreign_key: true
      t.references :producto, null: false, foreign_key: true
      t.integer :cantidad

      t.timestamps
    end
  end
end
