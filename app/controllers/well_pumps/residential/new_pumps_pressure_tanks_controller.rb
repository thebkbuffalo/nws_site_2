class WellPumps::Residential::NewPumpsPressureTanksController < ApplicationController
  before_action :set_ppt, only: [:show, :edit, :update, :destroy]

  def index
    @pumps_pressure_tanks = PumpsPressureTank.all
  end

  def show
    if !current_user
      redirect_to '/'
    end
  end

  def new
    if current_user
      @pumps_pressure_tank = PumpsPressureTank.new
    else
      redirect_to '/'
    end
  end

  def edit
  end

  def create
    @pumps_pressure_tank = PumpsPressureTank.new(ppt_params)
    respond_to do |format|
      if @pumps_pressure_tank.save
        format.html {redirect_to '/well_pumps/residential/new_pumps_pressure_tanks'}
      else
        format.html {render :new}
      end
    end
  end

  def update
    respond_to do |format|
      if @pumps_pressure_tank.update(ppt_params)
        format.html {redirect_to '/well_pumps/residential/new_pumps_pressure_tanks'}
      else
        format.html {render :new}
      end
    end
  end

  def destroy
    @pumps_pressure_tank = PumpsPressureTank.find(params[:id])
    if @pumps_pressure_tank.present?
      @pumps_pressure_tank.destroy
    end
    redirect_to '/well_pumps/residential/new_pumps_pressure_tanks'
  end

  private

  def set_ppt
    @pumps_pressure_tank = PumpsPressureTank.find(params[:id])
  end

  def ppt_params
    params.require(:pumps_pressure_tank).permit(:ppt_pic)
  end

end
