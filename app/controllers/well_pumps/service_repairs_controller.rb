class WellPumps::ServiceRepairsController < ApplicationController
  before_action :set_service_repair, only: [:show, :edit, :update, :destroy]

  def index
    @service_repairs = ServiceRepair.all
  end

  def show
    if !current_user
      redirect_to '/'
    end
  end

  def new
    if current_user
      @service_repair = ServiceRepair.new
    else
      redirect_to '/'
    end
  end

  def edit
  end

  def create
    @service_repair = ServiceRepair.new(service_repair_params)
    respond_to do |format|
      if @service_repair.save
        format.html {redirect_to '/well_pumps/service_repairs'}
      else
        format.html {render :new}
      end
    end
  end

  def update
    respond_to do |format|
      if @service_repair.save(service_repair_params)
        format.html {redirect_to '/well_pumps/service_repairs'}
      else
        format.html {render :new}
      end
    end
  end

  def destroy
    @service_repair = ServiceRepair.find(params[:id])
    if @service_repair.present?
      @service_repair.destroy
    end
    redirect_to '/well_pumps/service_repairs'
  end

  private

  def set_service_repair
    @service_repair = ServiceRepair.find(params[:id])
  end

  def service_repair_params
    params.require(:service_repair).permit(:service_repair_pic, :service_repair_tag)
  end

end
