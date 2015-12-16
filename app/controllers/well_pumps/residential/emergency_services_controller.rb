class WellPumps::Residential::EmergencyServicesController < ApplicationController
  before_action :set_emergency, only: [:show, :edit, :update, :destroy]

  def index
    @emergency_services = EmergencyService.all
  end

  def show
    if !current_user
      redirect_to '/'
    end
  end

  def new
    if current_user
      @emergency_service = EmergencyService.new
    else
      redirect_to '/'
    end
  end

  def edit
  end

  def create
    @emergency_service = EmergencyService.new(emergence_service_params)
    respond_to do |format|
      if @emergency_service.save
        format.html {redirect_to '/well_pumps/residential/emergency_services'}
      else
        format.html {render :new}
      end
    end
  end

  def update
    respond_to do |format|
      if @emergency_service.save(emergence_service_params)
        format.html {redirect_to '/well_pumps/residential/emergency_services'}
      else
        format.html {render :new}
      end
    end
  end

  def destroy
    @emergency_service = EmergencyService.find(params[:id])
    if @emergency_service.present?
      @emergency_service.destroy
    end
    redirect_to '/well_pumps/residential/emergency_services'
  end

  private

  def set_emergency
    @emergency_service = EmergencyService.find(params[:id])
  end

  def emergence_service_params
    params.require(:emergency_service).permit(:emergency_pic)
  end

end
