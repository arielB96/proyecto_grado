class StockMedicasController < ApplicationController
  before_action :set_stock_medica, only: [:show, :edit, :update, :destroy]

  # GET /stock_medicas
  # GET /stock_medicas.json
  def index
    @stock_medicas = StockMedica.all
    @ficha_medicas = FichaMedica.all
  end

  # GET /stock_medicas/1
  # GET /stock_medicas/1.json
  def show
  end

  # GET /stock_medicas/new
  def new
    @stock_medica = StockMedica.new
    @ficha_medicas = FichaMedica.all
    @medicamentos = Medicamento.all
  end

  # GET /stock_medicas/1/edit
  def edit
    @ficha_medicas = FichaMedica.all
    @medicamentos = Medicamento.all
  end

  # POST /stock_medicas
  # POST /stock_medicas.json
  def create

    @diagnostico = Diagnostico.find(params[:diagnostico_id])
    @stock_medica =  @diagnostico.stock_medicas.create(stock_medica_params)
   
    respond_to do |format|
      if @stock_medica.save
        format.html { redirect_to @stock_medica, notice: 'Fue Crado stock' }
        format.json { render :show, status: :created, location: @stock_medica }
      else
        format.html { render :new }
        format.json { render json: @stock_medica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stock_medicas/1
  # PATCH/PUT /stock_medicas/1.json
  def update
    respond_to do |format|
      if @stock_medica.update(stock_medica_params)
        format.html { redirect_to @stock_medica, notice: 'Stock medica was successfully updated.' }
        format.json { render :show, status: :ok, location: @stock_medica }
      else
        format.html { render :edit }
        format.json { render json: @stock_medica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stock_medicas/1
  # DELETE /stock_medicas/1.json
  def destroy
    @stock_medica.destroy
    respond_to do |format|
      format.html { redirect_to stock_medicas_url, notice: 'Stock medica was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stock_medica
      @stock_medica = StockMedica.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stock_medica_params
      params.require(:stock_medica).permit(:cantidad, :medicamento_id)
    end
end
