class WaterTreatment::ReverseOsmosis::BasementsController < ApplicationController
  before_action :set_basement, only: [:show, :edit, :update, :destroy]

  def index
    @basements = Basement.all
  end

  def show
    if !current_user
      redirect_to '/'
    end
  end

  def new
    if current_user
      @basement = Basement.new
    else
      redirect_to '/'
    end
  end

  def edit
  end

  def create
    @basement = Basement.new(basement_params)
    respond_to do |format|
      if @basement.save
        format.html {redirect_to '/water_treatment/reverse_osmosis/basements'}
      else
        format.html {render :new}
      end
    end
  end

  def update
    respond_to do |format|
      if @basement = Basement.save(basement_params)
        format.html {redirect_to '/water_treatment/reverse_osmosis/basements'}
      else
        format.html {render :new}
      end
    end
  end

  def destroy
    @basement = Basement.find(params[:id])
    if @basement.present?
      @basement.destroy
    end
    redirect_to '/water_treatment/reverse_osmosis/basements'
  end

  private

  def set_basement
    @basement = Basement.find(params[:id])
  end

  def basement_params
    params.require(:basement).permit(:basement_pic)
  end
end
