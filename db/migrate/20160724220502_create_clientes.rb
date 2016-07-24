class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :cpf_cnpj
      t.string :rua
      t.string :numero
      t.string :cep
      t.string :bairro
      t.string :telefone
      t.string :celular
      t.string :telefone_comercial
      t.date :data_nascimento
      t.string :rg

      t.timestamps null: false
    end
  end
end
