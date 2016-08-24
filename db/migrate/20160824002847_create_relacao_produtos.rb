class CreateRelacaoProdutos < ActiveRecord::Migration
  def change
    create_table :relacao_produtos do |t|
      t.belongs_to :produto, index: true, foreign_key: true
      t.integer :camara_troca_id

      t.timestamps null: false
    end
  end
end
