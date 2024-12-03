class CreateProductos < ActiveRecord::Migration[7.2]
  def change
    create_table :productos do |t|
      t.string :nombre
      t.decimal :precio
      t.integer :stock

      t.timestamps
    end
  end
end
