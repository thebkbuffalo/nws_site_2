class WaterTreatment::Commercial::Office::DrinkingWaterIcemakersController < ApplicationController
  before_action :set_icemaker, only: [:show, :edit, :update, :destroy]

  def index
    @icemakers = Icemaker.all
  end

  def show
    if !current_user
      redirect_to '/'
    end
  end

  def new
    if current_user
      @icemaker = Icemaker.new
    else
      redirect_to '/'
    end
  end

  def edit
  end

  def create
    @icemaker = Icemaker.new(icemaker_params)
    respond_to do |format|
      if @icemaker.save
        format.html {redirect_to '/water_treatment/commercial/office/drinking_water_icemakers'}
      else
        format.html {render :new}
      end
    end
  end

  def update
    respond_to do |format|
      if @icemaker = Icemaker.save(icemaker_params)
        format.html {redirect_to '/water_treatment/commercial/office/drinking_water_icemakers'}
      else
        format.html {render :new}
      end
    end
  end

  def destroy
    @icemaker = Icemaker.find(params[:id])
    if @icemaker.present?
      @icemaker.destroy
    end
    redirect_to '/water_treatment/commercial/office/drinking_water_icemakers'
  end

  private

  def set_icemaker
    @icemaker = Icemaker.find(params[:id])
  end

  def icemaker_params
    params.require(:icemaker).permit(:icemaker_pic)
  end
end
