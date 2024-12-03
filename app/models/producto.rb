class Producto < ApplicationRecord
  has_many :factura_productos
  has_many :facturas, through: :factura_productos
end
