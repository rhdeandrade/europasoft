class Produto < ActiveRecord::Base
	has_many :vendas, through: :vendas_produtos
end
