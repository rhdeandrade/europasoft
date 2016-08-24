class ProdutosClientesController < ApplicationController
  def index
  	@produtos_clientes = ProdutosCliente.all
  end

  def troca_camara
  	@produtos_cliente = ProdutosCliente.find(params[:id])
  end

  def save_troca_camara
  	@produtos_cliente = Produto.find(params[:produtos_cliente_id])
  	
    respond_to do |format|
      if @produtos_cliente.save
        format.html { redirect_to produtos_clientes_path, notice: 'Data de troca atualizada com sucesso.' }
        format.json { render :show, status: :created, location: @produto }
      else
        format.html { render troca_camara_path(@produtos_cliente) }
        format.json { render json: @produto.errors, status: :unprocessable_entity }
      end
    end
  end

end
