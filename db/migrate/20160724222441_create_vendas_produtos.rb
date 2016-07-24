class CreateVendasProdutos < ActiveRecord::Migration
  def change
    create_table :vendas_produtos do |t|
      t.belongs_to :produto, index: true, foreign_key: true
      t.belongs_to :venda, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
