class CreateClientes < ActiveRecord::Migration[7.2]
  def change
    create_table :clientes do |t|
      t.string :nombre
      t.string :direccion
      t.string :telefono

      t.timestamps
    end
  end
end
