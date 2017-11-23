class FichaMedicasController < ApplicationController
  before_action :set_ficha_medica, only: [:show, :pdf, :edit, :update, :destroy]

  # GET /ficha_medicas
  # GET /ficha_medicas.json
  def index
    @ficha_medicas = FichaMedica.all
    @categoris = Categori.all
    @puesto_saluds = PuestoSalud.all
  end

  # GET /ficha_medicas/1
  # GET /ficha_medicas/1.json
  def show
    
  end

  def pdf
    @ficha_medica = FichaMedica.find(params[:id])
     respond_to do |format|
      format.html
        format.pdf do
          pdf = FichaPdf.new
          send_data pdf.render, filename: 'ficha_medica_#{@FichaMedica.ficha_medica_nombre}.pdf', 
                                type:'application/pdf', 
                                disposition: "inline"
        end
      end
  end

  def consul
    FichaMedica.where(id: params[:ficha_medica_ids]).update_all(consulta: true)
    redirect_to ficha_medicas_url
  end
  
  # GET /ficha_medicas/new
  def new
    @ficha_medica = FichaMedica.new
    @categoris = Categori.all
    @puesto_salud = PuestoSalud.all
    @sexos = Sexo.all
    @nivel_academicos = NivelAcademico.all
    @origens = Origen.all
    @estado_civils = EstadoCivil.all
    @areas = Area.all
  end

  # GET /ficha_medicas/1/edit
  def edit
    @categoris = Categori.all
    @puesto_salud = PuestoSalud.all
    @sexos = Sexo.all
    @nivel_academicos = NivelAcademico.all
    @origens = Origen.all
    @estado_civils = EstadoCivil.all
    @areas = Area.all
  end

  # POST /ficha_medicas
  # POST /ficha_medicas.json
  def create
    @ficha_medica = FichaMedica.new(ficha_medica_params)

    respond_to do |format|
      if @ficha_medica.save
        format.html { redirect_to @ficha_medica, notice: 'Ficha medica was successfully created.' }
        format.json { render :index, status: :created, location: @ficha_medica }
      else
        format.html { render :new }
        format.json { render json: @ficha_medica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ficha_medicas/1
  # PATCH/PUT /ficha_medicas/1.json
  def update
    respond_to do |format|
      if @ficha_medica.update(ficha_medica_params)
        format.html { redirect_to @ficha_medica, notice: 'Ficha medica was successfully updated.' }
        format.json { render :index, status: :ok, location: @ficha_medica }
      else
        format.html { render :edit }
        format.json { render json: @ficha_medica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ficha_medicas/1
  # DELETE /ficha_medicas/1.json
  def destroy
    @ficha_medica.destroy
    respond_to do |format|
      format.html { redirect_to ficha_medicas_url, notice: 'Ficha medica was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ficha_medica
      @ficha_medica = FichaMedica.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ficha_medica_params
      params.require(:ficha_medica).permit(:categori_id,:puesto_salud_id,:diagnostico_id,:sexo_id,:origen_id,:estado_civil_id,:nivel_academico_id,:area_id,:numero, :especialidad, :nombre, :apellido, :edad, :ci,:fechaNacimiento, :lugarNacimiento, :nacionalidad,:telefono, :nCasa, :email, :direccionActual, :departamentoActual, :distritoActual, :consulta)
    end
end
