class Pedido < ApplicationRecord
  belongs_to :cliente

  validates :codigo, presence: true, uniqueness: true

  before_validation :generar_codigo, on: :create

  private

  def generar_codigo
    self.codigo ||= "PED-#{SecureRandom.hex(4).upcase}"
  end
end
