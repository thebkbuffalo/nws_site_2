class WaterTreatment::Commercial::Office::WaterCoolersController < ApplicationController
  before_action :set_water_cooler, only: [:show, :edit, :update, :destroy]

  def index
    @water_coolers = WaterCooler.all
  end

  def show
    if !current_user
      redirect_to '/'
    end
  end

  def new
    if current_user
      @water_cooler = WaterCooler.new
    else
      redirect_to '/'
    end
  end

  def edit
  end

  def create
    @water_cooler = WaterCooler.new(water_cooler_params)
    respond_to do |format|
      if @water_cooler.save
        format.html {redirect_to '/water_treatment/commercial/office/water_coolers'}
      else
        format.html {render :new}
      end
    end
  end

  def update
    respond_to do |format|
      if @water_cooler = WaterCooler.save(water_cooler_params)
        format.html {redirect_to '/water_treatment/commercial/office/water_coolers'}
      else
        format.html {render :new}
      end
    end
  end

  def destroy
    @water_cooler = WaterCooler.find(params[:id])
    if @water_cooler.present?
      @water_cooler.destroy
    end
    redirect_to '/water_treatment/commercial/office/water_coolers'
  end

  private

  def set_water_cooler
    @water_cooler = WaterCooler.find(params[:id])
  end

  def water_cooler_params
    params.require(:water_cooler).permit(:water_cooler_pic, :water_cooler_tag)
  end
end
