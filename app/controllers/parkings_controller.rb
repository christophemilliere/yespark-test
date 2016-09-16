class ParkingsController < ApplicationController
  before_action :set_parking, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /parkings
  # GET /parkings.json
  def index
    @parkings = current_user.parkings
  end

  # GET /parkings/1
  # GET /parkings/1.json
  def show
  end

  # GET /parkings/new
  def new
    @parking = Parking.new
  end

  # GET /parkings/1/edit
  def edit
  end

  # POST /parkings
  # POST /parkings.json
  def create
    @parking = current_user.parkings.new(parking_params)
    if @parking.save
      redirect_to @parking, notice: 'Parking crée'
    else
      render :new
    end
  end

  # PATCH/PUT /parkings/1
  def update
    if @parking.update(parking_params)
      redirect_to @parking, notice: 'Mise à jour du parking'
    else
      render :edit
    end
  end

  # DELETE /parkings/1
  def destroy
    @parking.destroy
    redirect_to parkings_path, notice: 'Vous avez bien supprimé le parking !!'
  end

  #GET /parkings/maps
  def maps
    @parking_info = current_user.parkings.select("id, name, lat, lng")
  end

  def outputs
    respond_to do |format|
        format.json  { render json: Parking.all }
    end
  end

  private
    def set_parking
      @parking = current_user.parkings.find(params[:id])
    end

    def parking_params
      params.require(:parking).permit(:lat, :lng, :name, :address, :available, :slug, :has_camera, :has_watchman, :zip_code, :district, :city, :main_picture, :price_month, :user_id)
    end
end
