class CreateVendedors < ActiveRecord::Migration
  def change
    create_table :vendedors do |t|
      t.string :nome
      t.string :cpf
      t.boolean :ativo

      t.timestamps null: false
    end
  end
end
