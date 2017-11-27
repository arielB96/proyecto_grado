class ViewConsultaController < ApplicationController
  before_action :set_view_consultum, only: [:show, :edit, :update, :destroy]

  # GET /view_consulta
  # GET /view_consulta.json
  def index
    @ficha_medicas = FichaMedica.where(consulta: true)
  end
  # def baja
  #   FichaMedica.where(id: params[:ficha_medica_ids]).update_all(consulta: false)
  #   redirect_to ficha_medicas_url
  # end

  # # GET /view_consulta/1
  # # GET /view_consulta/1.json
  # def show
  # end

  # # GET /view_consulta/new
  # def new
  #   @view_consultum = ViewConsultum.new
  # end

  # # GET /view_consulta/1/edit
  # def edit
  # end

  # # POST /view_consulta
  # # POST /view_consulta.json
  # def create
  #   @view_consultum = ViewConsultum.new(view_consultum_params)

  #   respond_to do |format|
  #     if @view_consultum.save
  #       format.html { redirect_to @view_consultum, notice: 'View consultum was successfully created.' }
  #       format.json { render :show, status: :created, location: @view_consultum }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @view_consultum.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # PATCH/PUT /view_consulta/1
  # # PATCH/PUT /view_consulta/1.json
  # def update
  #   respond_to do |format|
  #     if @view_consultum.update(view_consultum_params)
  #       format.html { redirect_to @view_consultum, notice: 'View consultum was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @view_consultum }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @view_consultum.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # DELETE /view_consulta/1
  # # DELETE /view_consulta/1.json
  # def destroy
  #   @view_consultum.destroy
  #   respond_to do |format|
  #     format.html { redirect_to view_consulta_url, notice: 'View consultum was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  # private
  #   # Use callbacks to share common setup or constraints between actions.
  #   def set_view_consultum
  #     @view_consultum = ViewConsultum.find(params[:id])
  #   end

  #   # Never trust parameters from the scary internet, only allow the white list through.
  #   def view_consultum_params
  #     params.fetch(:view_consultum, {})
  #   end
end
