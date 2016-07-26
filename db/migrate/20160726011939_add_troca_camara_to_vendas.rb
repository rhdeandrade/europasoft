class AddTrocaCamaraToVendas < ActiveRecord::Migration
  def change
    add_column :vendas, :troca_camara, :boolean
  end
end
