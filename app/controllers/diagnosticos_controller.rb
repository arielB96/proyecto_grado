class DiagnosticosController < ApplicationController
  before_action :set_diagnostico, only: [:show, :edit, :update, :destroy]

  # GET /diagnosticos
  # GET /diagnosticos.json
  def index
    @diagnosticos = Diagnostico.where(consultar: true)
  end


  # GET /diagnosticos/1
  # GET /diagnosticos/1.json
  def show
     @ficha_doc = FichaDoc.new
     @stock_medicas = StockMedica.new
     @medicamentos = Medicamento.all
  end

  # GET /diagnosticos/new
  def new
    @diagnostico = Diagnostico.new
  end

  # GET /diagnosticos/1/edit
  def edit
  end

  # POST /diagnosticos
  # POST /diagnosticos.json
  def create  
    @ficha_medica = FichaMedica.find(params[:ficha_medica_id])
    @diagnostico = @ficha_medica.diagnosticos.create(diagnostico_params)
    if @diagnostico.save
    msg = "Se ha agregado correctamente "
    flash[:notice] =  msg
    else
      redirect_to diagnosticos_url
    end
    redirect_to ficha_medicas_url
  end

  # PATCH/PUT /diagnosticos/1
  # PATCH/PUT /diagnosticos/1.json
  def update
    respond_to do |format|
      if @diagnostico.update(diagnostico_params)
        format.html { redirect_to @diagnostico, notice: 'Diagnostico was successfully updated.' }
        format.json { render :show, status: :ok, location: @diagnostico }
      else
        format.html { render :edit }
        format.json { render json: @diagnostico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diagnosticos/1
  # DELETE /diagnosticos/1.json
  def destroy
    @diagnostico.destroy
    respond_to do |format|
      format.html { redirect_to diagnosticos_url, notice: 'Diagnostico was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diagnostico
      @diagnostico = Diagnostico.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def diagnostico_params
      params.require(:diagnostico).permit(:ficha_medica_id,:fecha, :axilaRectal, :presionArterial, :pulso, :freCardiaca, :freRespi, :peso, :talla, :perimeCefalico, :masaCorpo, :circuAbdomi, :estadNutricional, :alimentacion, :desarrolloMadura, :tanner, :vacucacionVigente, :areaTecEspecialidades, :nuevo,:consultar,
        fiha_docs_attributes: [:diagnostico_id,:motivoConsul, :examenFisico, :otroDiagnos, :tratamiento],
        stock_medicas_attributes: [:id, :medicamento_id, :cantidad, :_destroy])
    end
end
