class MotocicletasController < ApplicationController
  before_action :set_motocicleta, only: [:show, :edit, :update, :destroy]

  # GET /motocicletas
  # GET /motocicletas.json
  def index
    @motocicletas = Motocicleta.all
  end

  # GET /motocicletas/1
  # GET /motocicletas/1.json
  def show
  end

  # GET /motocicletas/new
  def new
    @motocicleta = Motocicleta.new
  end

  # GET /motocicletas/1/edit
  def edit
  end

  # POST /motocicletas
  # POST /motocicletas.json
  def create
    @motocicleta = Motocicleta.new(motocicleta_params)

    respond_to do |format|
      if @motocicleta.save
        format.html { redirect_to @motocicleta, notice: 'Motocicleta was successfully created.' }
        format.json { render :show, status: :created, location: @motocicleta }
      else
        format.html { render :new }
        format.json { render json: @motocicleta.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /motocicletas/1
  # PATCH/PUT /motocicletas/1.json
  def update
    respond_to do |format|
      if @motocicleta.update(motocicleta_params)
        format.html { redirect_to @motocicleta, notice: 'Motocicleta was successfully updated.' }
        format.json { render :show, status: :ok, location: @motocicleta }
      else
        format.html { render :edit }
        format.json { render json: @motocicleta.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /motocicletas/1
  # DELETE /motocicletas/1.json
  def destroy
    @motocicleta.destroy
    respond_to do |format|
      format.html { redirect_to motocicletas_url, notice: 'Motocicleta was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_motocicleta
      @motocicleta = Motocicleta.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def motocicleta_params
      params.require(:motocicleta).permit(:nome, :placa)
    end
end
