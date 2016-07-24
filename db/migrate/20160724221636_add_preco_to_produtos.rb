class AddPrecoToProdutos < ActiveRecord::Migration
  def change
    add_column :produtos, :preco, :float
  end
end
