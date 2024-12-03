class AddCodigoToPedidos < ActiveRecord::Migration[7.2]
  def change
    add_column :pedidos, :codigo, :string
  end
end
