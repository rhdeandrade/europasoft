class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.string :nome
      t.integer :tipo
      t.integer :vencimento

      t.timestamps null: false
    end
  end
end
