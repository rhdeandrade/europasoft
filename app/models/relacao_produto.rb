class RelacaoProduto < ActiveRecord::Base
  belongs_to :produto
  belongs_to :camara_troca, :class_name => "Produto", :foreign_key => "camara_troca_id"
  
end
