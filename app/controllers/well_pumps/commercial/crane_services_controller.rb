class WellPumps::Commercial::CraneServicesController < ApplicationController
  before_action :set_crane_service, only: [:show, :edit, :update, :desetroy]

  def index
    @crane_services = CraneService.all
  end

  def show
    if !current_user
      redirect_to '/'
    end
  end

  def new
    if current_user
      @crane_service = CraneService.new
    else
      redirect_to '/'
    end
  end

  def edit
  end

  def create
    @crane_service = CraneService.new(crane_service_params)

    respond_to do |format|
      if @crane_service.save
        format.html {redirect_to '/well_pumps/commercial/crane_services' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @crane_service.update(crane_service_params)
        format.html {redirect_to '/well_pumps/commercial/crane_services' }
      else
        format.html { render :new }
      end
    end
  end

  def destroy
    @crane_service = CraneService.find(params[:id])
    if @crane_service.present?
      @crane_service.destroy
    end
    redirect_to '/well_pumps/commercial/crane_services'
  end

  private

  def set_crane_service
    @crane_service = CraneService.find(params[:id])
  end

  def crane_service_params
    params.require(:crane_service).permit(:crane_pic, :crane_service_tag)
  end

end
