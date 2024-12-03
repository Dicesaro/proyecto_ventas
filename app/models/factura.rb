class Factura < ApplicationRecord
  belongs_to :pedido, optional: true
end
