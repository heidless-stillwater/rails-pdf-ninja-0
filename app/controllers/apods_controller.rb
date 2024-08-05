class ApodsController < ApplicationController
  before_action :set_apod, only: %i[ show edit update destroy ]

  # GET /apods or /apods.json
  def index
    @apods = Apod.all

    api_key = 'DAbe8pRQBBRGzIhyQpaZsKymOFr9QHfjs2xpqFAp'
    api = ApodApi.new(api_key)
    
    @apod = api.apod_daily
 
  end

  # GET /apods/1 or /apods/1.json
  def show
  end

  # GET /apods/new
  def new
    @apod = Apod.new
  end

  # GET /apods/1/edit
  def edit
  end

  # POST /apods or /apods.json
  def create
    @apod = Apod.new(apod_params)

    respond_to do |format|
      if @apod.save
        format.html { redirect_to apod_url(@apod), notice: "Apod was successfully created." }
        format.json { render :show, status: :created, location: @apod }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @apod.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apods/1 or /apods/1.json
  def update
    respond_to do |format|
      if @apod.update(apod_params)
        format.html { redirect_to apod_url(@apod), notice: "Apod was successfully updated." }
        format.json { render :show, status: :ok, location: @apod }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @apod.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apods/1 or /apods/1.json
  def destroy
    @apod.destroy

    respond_to do |format|
      format.html { redirect_to apods_url, notice: "Apod was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apod
      @apod = Apod.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def apod_params
      params.require(:apod).permit(:name, :picture)
    end
end
