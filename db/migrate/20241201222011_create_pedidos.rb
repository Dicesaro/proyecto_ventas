class CreatePedidos < ActiveRecord::Migration[7.2]
  def change
    create_table :pedidos do |t|
      t.references :cliente, null: false, foreign_key: true
      t.string :estado
      t.datetime :fecha

      t.timestamps
    end
  end
end
