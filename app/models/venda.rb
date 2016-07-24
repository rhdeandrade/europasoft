class Venda < ActiveRecord::Base
  belongs_to :cliente
  belongs_to :vendedor
  has_many :vendas_produtos
  has_many :produtos, through: :vendas_produtos

  # accepts_nested_attributes_for :produtos
end
