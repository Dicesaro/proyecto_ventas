class AddCantidadToProductos < ActiveRecord::Migration[7.2]
  def change
    add_column :productos, :cantidad, :integer
  end
end
