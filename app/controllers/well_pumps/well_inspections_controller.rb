class WellPumps::WellInspectionsController < ApplicationController
  before_action :set_well_inspection, only: [:show, :edit, :update, :destroy]

  def index
    @well_inspections = WellInspection.all
  end

  def show
    if !current_user
      redirect_to '/'
    end
  end

  def new
    if current_user
      @well_inspection = WellInspection.new
    else
      redirect_to '/'
    end
  end

  def edit
  end

  def create
    @well_inspection = WellInspection.new(well_inspection_params)
    respond_to do |format|
      if @well_inspection.save
        format.html {redirect_to '/well_pumps/well_inspections'}
      else
        format.html {render :new}
      end
    end
  end

  def update
    respond_to do |format|
      if @well_inspection.save(well_inspection_params)
        format.html {redirect_to '/well_pumps/well_inspections'}
      else
        format.html {render :new}
      end
    end
  end

  def destroy
    @well_inspection = WellInspection.find(params[:id])
    if @well_inspection.present?
      @well_inspection.destroy
    end
    redirect_to '/well_pumps/well_inspections'
  end

  private

  def set_well_inspection
    @well_inspection = WellInspection.find(params[:id])
  end

  def well_inspection_params
    params.require(:well_inspection).permit(:well_inspection_pic)
  end

end
