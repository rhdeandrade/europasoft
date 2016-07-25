class CreateProdutosClientes < ActiveRecord::Migration
  def change
    create_table :produtos_clientes do |t|
      t.belongs_to :cliente, index: true, foreign_key: true
      t.belongs_to :produto, index: true, foreign_key: true
      t.date :data_compra
      t.date :data_ultima_troca

      t.timestamps null: false
    end
  end
end
