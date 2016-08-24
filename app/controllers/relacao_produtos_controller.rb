class RelacaoProdutosController < ApplicationController
  before_action :set_relacao_produto, only: [:show, :edit, :update, :destroy]

  # GET /relacao_produtos
  # GET /relacao_produtos.json
  def index
    @relacao_produtos = RelacaoProduto.all
  end

  # GET /relacao_produtos/1
  # GET /relacao_produtos/1.json
  def show
  end

  # GET /relacao_produtos/new
  def new
    @relacao_produto = RelacaoProduto.new
  end

  # GET /relacao_produtos/1/edit
  def edit
  end

  # POST /relacao_produtos
  # POST /relacao_produtos.json
  def create
    @relacao_produto = RelacaoProduto.new(relacao_produto_params)

    respond_to do |format|
      if @relacao_produto.save
        format.html { redirect_to @relacao_produto, notice: 'Relacao produto was successfully created.' }
        format.json { render :show, status: :created, location: @relacao_produto }
      else
        format.html { render :new }
        format.json { render json: @relacao_produto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /relacao_produtos/1
  # PATCH/PUT /relacao_produtos/1.json
  def update
    respond_to do |format|
      if @relacao_produto.update(relacao_produto_params)
        format.html { redirect_to @relacao_produto, notice: 'Relacao produto was successfully updated.' }
        format.json { render :show, status: :ok, location: @relacao_produto }
      else
        format.html { render :edit }
        format.json { render json: @relacao_produto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /relacao_produtos/1
  # DELETE /relacao_produtos/1.json
  def destroy
    @relacao_produto.destroy
    respond_to do |format|
      format.html { redirect_to relacao_produtos_url, notice: 'Relacao produto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_relacao_produto
      @relacao_produto = RelacaoProduto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def relacao_produto_params
      params.require(:relacao_produto).permit(:produto_id, :camara_troca_id)
    end
end
