class DiagnosticosController < ApplicationController
  before_action :set_diagnostico, only: [:show, :edit, :update, :destroy]

  # GET /diagnosticos
  # GET /diagnosticos.json
  def index
    @diagnosticos = Diagnostico.where(consultar: true)
  end
  def consultas
    @diagnosticos = Diagnostico.where(consultar: false)
  end

  # GET /diagnosticos/1
  # GET /diagnosticos/1.json
  def show
    @medicamentos = Medicamento.all
    @ficha_docs = FichaDoc.all
    @diagnosticos = Diagnostico.all
    @stock_medica = @diagnostico.stock_medicas.build
    @ficha_doc = @diagnostico.ficha_docs.build
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
        redirect_to @ficha_medica
      end
    redirect_to ficha_medicas_url
  end

  # PATCH/PUT /diagnosticos/1
  # PATCH/PUT /diagnosticos/1.json
  # def update 
  # @diagnostico = @diagnostico.ficha_docs.build(diagnostico_params)
  #   if @diagnostico.save 
  #       msg = "Se ha agregado correctamente "
  #       flash[:notice] =  msg
  #       # @diagnostico.update_attributes({:consultar => false });
  #       redirect_to diagnosticos_url
  #     else
  #       msg = "Ocurrio un error"
  #       flash[:alert] =  msg
  #       redirect_to @diagnostico
  #     end
  # end

  def update
  respond_to do |format|
      if @diagnostico.update(diagnostico_params)
        @diagnostico.update_attributes({:consultar => false })
        format.html { redirect_to diagnosticos_url, notice: 'Consulta Guardado' }
      else
        format.html { render :show }
        msg = "Ocurrio un error"
        flash[:alert] =  msg
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
        ficha_docs_attributes:[:motivoConsul, :examenFisico, :otroDiagnos, :tratamiento],stock_medicas_attributes:[:medicamento_id, :cantidad, :_destroy])
    end
end