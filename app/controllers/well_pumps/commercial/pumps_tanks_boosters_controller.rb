class WellPumps::Commercial::PumpsTanksBoostersController < ApplicationController
  before_action :set_pumps_tanks_boosters, only: [:show, :edit, :update, :destroy]

  def index
    @pumps_tanks_boosters = PumpsTanksBooster.all
  end

  def show
    if !current_user
      redirect_to '/'
    end
  end

  def new
    if current_user
      @pump_tank_booster = PumpsTanksBooster.new
    else
      redirect_to '/'
    end
  end

  def edit
  end

  def create
    @pump_tank_booster = PumpsTanksBooster.new(ptb_params)
    respond_to do |format|
      if @pump_tank_booster.save
        format.html {redirect_to '/well_pumps/commercial/pumps_tanks_boosters'}
      else
        format.html{render :new}
      end
    end
  end

  def update
    respond_to do |format|
      if @pump_tank_booster.update(ptb_params)
        format.html {redirect_to '/well_pumps/commercial/pumps_tanks_boosters'}
      else
        format.html {render :new}
      end
    end
  end

  def destroy
    @pump_tank_booster = PumpsTanksBooster.find(params[:id])
    if @pump_tank_booster.present?
      @pump_tank_booster.destroy
    end
    redirect_to '/well_pumps/commercial/pumps_tanks_boosters'
  end

  private

  def set_pumps_tanks_boosters
    @pump_tank_booster = PumpsTanksBooster.find(params[:id])
  end

  def ptb_params
    params.require(:pumps_tanks_booster).permit(:ptb_pic)
  end

end
