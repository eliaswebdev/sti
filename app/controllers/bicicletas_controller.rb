class BicicletasController < ApplicationController
  before_action :set_bicicleta, only: [:show, :edit, :update, :destroy]

  # GET /bicicletas
  # GET /bicicletas.json
  def index
    @bicicletas = Bicicleta.all
  end

  # GET /bicicletas/1
  # GET /bicicletas/1.json
  def show
  end

  # GET /bicicletas/new
  def new
    @bicicleta = Bicicleta.new
  end

  # GET /bicicletas/1/edit
  def edit
  end

  # POST /bicicletas
  # POST /bicicletas.json
  def create
    @bicicleta = Bicicleta.new(bicicleta_params)

    respond_to do |format|
      if @bicicleta.save
        format.html { redirect_to @bicicleta, notice: 'Bicicleta was successfully created.' }
        format.json { render :show, status: :created, location: @bicicleta }
      else
        format.html { render :new }
        format.json { render json: @bicicleta.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bicicletas/1
  # PATCH/PUT /bicicletas/1.json
  def update
    respond_to do |format|
      if @bicicleta.update(bicicleta_params)
        format.html { redirect_to @bicicleta, notice: 'Bicicleta was successfully updated.' }
        format.json { render :show, status: :ok, location: @bicicleta }
      else
        format.html { render :edit }
        format.json { render json: @bicicleta.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bicicletas/1
  # DELETE /bicicletas/1.json
  def destroy
    @bicicleta.destroy
    respond_to do |format|
      format.html { redirect_to bicicletas_url, notice: 'Bicicleta was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bicicleta
      @bicicleta = Bicicleta.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bicicleta_params
      params.require(:bicicleta).permit(:nome, :placa)
    end
end
