class WellPumps::Residential::RepairsConversionsPitRepairsController < ApplicationController
  before_action :set_rcpr, only: [:show, :edit, :update, :desetroy]

  def index
    @pit_conversions = RepairConversionPitRepair.all
  end

  def show
    if !current_user
      redirect_to '/'
    end
  end

  def new
    if current_user
      @pit_conversion = RepairConversionPitRepair.new
    else
      redirect_to '/'
    end
  end

  def edit
  end

  def create
    @pit_conversion = RepairConversionPitRepair.new(rcpr_params)
    respond_to do |format|
      if @pit_conversion.save
        format.html {redirect_to '/well_pumps/residential/repairs_conversions_pit_repairs'}
      else
        format.html {render :new}
      end
    end
  end

  def update
    respond_to do |format|
      if @pit_conversion.save(rcpr_params)
        format.html {redirect_to '/well_pumps/residential/repairs_conversions_pit_repairs'}
      else
        format.html {render :new}
      end
    end
  end

  def destroy
    @pit_conversion = RepairConversionPitRepair.find(params[:id])
    if @pit_conversion.present?
      @pit_conversion.destroy
    end
    redirect_to '/well_pumps/residential/repairs_conversions_pit_repairs'
  end

  private

  def set_rcpr
    @pit_conversion = RepairConversionPitRepair.find(params[:id])
  end

  def rcpr_params
    params.require(:repair_conversion_pit_repair).permit(:rcpr_pic, :rcpr_tag)
  end

end
