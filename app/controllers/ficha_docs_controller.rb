class FichaDocsController < ApplicationController
  before_action :set_ficha_doc, only: [:show, :edit, :update, :destroy]

  # GET /ficha_docs
  # GET /ficha_docs.json
  def index
    @ficha_docs = FichaDoc.all
  end

  # GET /ficha_docs/1
  # GET /ficha_docs/1.json
  def show
    @stock_medicas = StockMedica.all
    @medicamentos = Medicamento.all

    @diagnostico = Diagnostico.all
  end

  # GET /ficha_docs/new
  def new
    @ficha_doc = FichaDoc.new
  end

  # GET /ficha_docs/1/edit
  def edit
  end

  # POST /ficha_docs
  # POST /ficha_docs.json
  
  # def create
  #   # @diagnostico = Diagnostico.find(params[:diagnostico_id])
  #    @diagnostico = FichaDoc.new(ficha_doc_params)
  #   # redirect_to diagnostico_path(@diagnostico)

  #   if @diagnostico.save
  #       msg = "Creado "
  #       flash[:notice] =  msg
  #       redirect_to diagnosticos_url
  #     else
  #       msg = "Error "
  #       flash[:alert] =  msg
  #       redirect_to ficha_docs_path(@ficha_doc)
  #     end
  # end


  def create
     @diagnostico = Diagnostico.find(params[:diagnostico_id])
     @ficha_doc =  @diagnostico.ficha_docs.create(params.require(:ficha_doc).permit(:diagnostico_id,:motivoConsul, :examenFisico, :otroDiagnos, :tratamiento,
      stock_medicas_attributes: [:cantidad, :medicamento_id, :_destroy]))
    # @diagnostico = Diagnostico.find(params[:diagnostico_id])
    # @ficha_doc = FichaDoc.new(ficha_doc_params)

    respond_to do |format|
      if @ficha_doc.save
        format.html { redirect_to @ficha_doc, notice: 'Creado' }
        format.json { render :show, status: :created, location: @ficha_dos }
      else
        format.html { render :show }
        format.json { render json: @ficha_doc.errors, status: :unprocessable_entity }
      end
    end
  end


  # @ficha_medica = FichaMedica.find(params[:ficha_medica_id])
  # @diagnostico = @ficha_medica.diagnosticos.create(diagnostico_params)


  # PATCH/PUT /ficha_docs/1
  # PATCH/PUT /ficha_docs/1.json
  def update
    respond_to do |format|
      if @ficha_doc.update(ficha_doc_params)
        format.html { redirect_to @ficha_doc, notice: 'Ficha doc was successfully updated.' }
        format.json { render :show, status: :ok, location: @ficha_doc }
      else
        format.html { render :edit }
        format.json { render json: @ficha_doc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ficha_docs/1
  # DELETE /ficha_docs/1.json
  def destroy
    @ficha_doc.destroy
    respond_to do |format|
      format.html { redirect_to ficha_docs_url, notice: 'Ficha doc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ficha_doc
      @ficha_doc = FichaDoc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ficha_doc_params
      params.require(:ficha_doc).permit(:diagnostico_id,:motivoConsul, :examenFisico, :otroDiagnos, :tratamiento)
        # stock_medicas_attributes: [:id, :medicamento_id, :cantidad, :_destroy])
    end
end
