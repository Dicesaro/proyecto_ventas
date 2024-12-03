class AddDescripcionToProductos < ActiveRecord::Migration[7.2]
  def change
    add_column :productos, :descripcion, :text
  end
end
