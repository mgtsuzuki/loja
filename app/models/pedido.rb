class Pedido < ApplicationRecord
  belongs_to :vendedor
  belongs_to :cliente
end
