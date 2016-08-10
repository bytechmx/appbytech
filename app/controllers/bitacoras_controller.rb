class BitacorasController < ApplicationController
  before_action :set_bitacora, only: [:show, :edit, :update, :destroy]

  # GET /bitacoras
  # GET /bitacoras.json
  def index
     @search = Bitacora.search(params[:q])
    @bitacoras = @search.result.paginate(:page => params[:page], per_page: 10)
  end

  # GET /bitacoras/1
  # GET /bitacoras/1.json
  def show
  end

  # GET /bitacoras/new
  def new
    @bitacora = Bitacora.new
  end

  # GET /bitacoras/1/edit
  def edit
  end

  # POST /bitacoras
  # POST /bitacoras.json
  def create
    @bitacora = Bitacora.new(bitacora_params)

    respond_to do |format|
      if @bitacora.save
        format.html { redirect_to @bitacora, notice: 'Bitacora was successfully created.' }
        format.json { render :show, status: :created, location: @bitacora }
      else
        format.html { render :new }
        format.json { render json: @bitacora.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bitacoras/1
  # PATCH/PUT /bitacoras/1.json
  def update
    respond_to do |format|
      if @bitacora.update(bitacora_params)
        format.html { redirect_to @bitacora, notice: 'Bitacora was successfully updated.' }
        format.json { render :show, status: :ok, location: @bitacora }
      else
        format.html { render :edit }
        format.json { render json: @bitacora.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bitacoras/1
  # DELETE /bitacoras/1.json
  def destroy
    @bitacora.destroy
    respond_to do |format|
      format.html { redirect_to bitacoras_url, notice: 'Bitacora was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bitacora
      @bitacora = Bitacora.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bitacora_params
      params.require(:bitacora).permit(:nombre, :telefono, :correo, :municipio, :estado, :area, :acreditado, :alcalde, :esquema, :convenio, :tipo, :acuerdo, :fechaacuerdo, :fechaseguimiento, :fechaevaluacion, :resultado, :tema, :pcfechallamada, :pcfechacorreo, :pcfechaobservaciones, :scfechallamada, :scfechacorreo, :scobservaciones, :estatus, :gruposcomunitarios, :ampliacionmetas, :tcfechallamada, :tcfechacorreo, :tcobservaciones, :estructura)
    end
end
