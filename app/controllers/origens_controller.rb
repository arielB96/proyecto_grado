class OrigensController < ApplicationController
  before_action :set_origen, only: [:show, :edit, :update, :destroy]

  # GET /origens
  # GET /origens.json
  def index
    @origens = Origen.all
  end

  # GET /origens/1
  # GET /origens/1.json
  def show
  end

  # GET /origens/new
  def new
    @origen = Origen.new
  end

  # GET /origens/1/edit
  def edit
  end

  # POST /origens
  # POST /origens.json
  def create
    @origen = Origen.new(origen_params)

    respond_to do |format|
      if @origen.save
        format.html { redirect_to @origen, notice: 'Origen was successfully created.' }
        format.json { render :show, status: :created, location: @origen }
      else
        format.html { render :new }
        format.json { render json: @origen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /origens/1
  # PATCH/PUT /origens/1.json
  def update
    respond_to do |format|
      if @origen.update(origen_params)
        format.html { redirect_to @origen, notice: 'Origen was successfully updated.' }
        format.json { render :show, status: :ok, location: @origen }
      else
        format.html { render :edit }
        format.json { render json: @origen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /origens/1
  # DELETE /origens/1.json
  def destroy
    @origen.destroy
    respond_to do |format|
      format.html { redirect_to origens_url, notice: 'Origen was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_origen
      @origen = Origen.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def origen_params
      params.require(:origen).permit(:etnia)
    end
end
