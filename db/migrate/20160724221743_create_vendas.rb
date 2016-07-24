class CreateVendas < ActiveRecord::Migration
  def change
    create_table :vendas do |t|
      t.date :data
      t.belongs_to :cliente, index: true, foreign_key: true
      t.belongs_to :vendedor, index: true, foreign_key: true
      t.float :valor_total

      t.timestamps null: false
    end
  end
end
