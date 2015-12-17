class WaterTreatment::ReverseOsmosis::WholeHousesController < ApplicationController
  before_action :set_whole_house, only: [:show, :edit, :update, :destroy]

  def index
    @whole_houses = WholeHouse.all
  end

  def show
    if !current_user
      redirect_to '/'
    end
  end

  def new
    if current_user
      @whole_house = WholeHouse.new
    else
      redirect_to '/'
    end
  end

  def edit
  end

  def create
    @whole_house = WholeHouse.new(whole_house_params)
    respond_to do |format|
      if @whole_house.save
        format.html {redirect_to '/water_treatment/reverse_osmosis/whole_houses'}
      else
        format.html {render :new}
      end
    end
  end

  def update
    respond_to do |format|
      if @whole_house.save(whole_house_params)
        format.html {redirect_to '/water_treatment/reverse_osmosis/whole_houses'}
      else
        format.html {render :new}
      end
    end
  end

  def destroy
    @whole_house = WholeHouse.find(params[:id])
    if @whole_house.present?
      @whole_house.destroy
    end
    redirect_to '/water_treatment/reverse_osmosis/whole_houses'
  end

  private

  def set_whole_house
    @whole_house = WholeHouse.find(params[:id])
  end

  def whole_house_params
    params.require(:whole_house).permit(:house_pic)
  end
end
