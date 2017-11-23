class NivelAcademicosController < ApplicationController
  before_action :set_nivel_academico, only: [:show, :edit, :update, :destroy]

  # GET /nivel_academicos
  # GET /nivel_academicos.json
  def index
    @nivel_academicos = NivelAcademico.all
  end

  # GET /nivel_academicos/1
  # GET /nivel_academicos/1.json
  def show
  end

  # GET /nivel_academicos/new
  def new
    @nivel_academico = NivelAcademico.new
  end

  # GET /nivel_academicos/1/edit
  def edit
  end

  # POST /nivel_academicos
  # POST /nivel_academicos.json
  def create
    @nivel_academico = NivelAcademico.new(nivel_academico_params)

    respond_to do |format|
      if @nivel_academico.save
        format.html { redirect_to @nivel_academico, notice: 'Nivel academico was successfully created.' }
        format.json { render :show, status: :created, location: @nivel_academico }
      else
        format.html { render :new }
        format.json { render json: @nivel_academico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nivel_academicos/1
  # PATCH/PUT /nivel_academicos/1.json
  def update
    respond_to do |format|
      if @nivel_academico.update(nivel_academico_params)
        format.html { redirect_to @nivel_academico, notice: 'Nivel academico was successfully updated.' }
        format.json { render :show, status: :ok, location: @nivel_academico }
      else
        format.html { render :edit }
        format.json { render json: @nivel_academico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nivel_academicos/1
  # DELETE /nivel_academicos/1.json
  def destroy
    @nivel_academico.destroy
    respond_to do |format|
      format.html { redirect_to nivel_academicos_url, notice: 'Nivel academico was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nivel_academico
      @nivel_academico = NivelAcademico.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nivel_academico_params
      params.require(:nivel_academico).permit(:nivelAcdemico)
    end
end
