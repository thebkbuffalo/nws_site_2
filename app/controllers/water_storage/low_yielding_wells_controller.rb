class WaterStorage::LowYieldingWellsController < ApplicationController
  before_action :set_low_yield, only: [:show, :edit, :update, :destroy]

  def index
    @low_yielding_wells = LowYieldingWell.all
  end

  def show
    if !current_user
      redirect_to '/'
    end
  end

  def new
    if current_user
      @low_yielding_well = LowYieldingWell.new
    else
      redirect_to '/'
    end
  end

  def edit
  end

  def create
    @low_yielding_well = LowYieldingWell.new(low_yield_params)
    respond_to do |format|
      if @low_yielding_well.save
        format.html {redirect_to '/water_storage/low_yielding_wells'}
      else
        format.html {render :new}
      end
    end
  end

  def update
    respond_to do |format|
      if @low_yielding_well.save(low_yield_params)
        format.html {redirect_to '/water_storage/low_yielding_wells'}
      else
        format.html {render :new}
      end
    end
  end

  def destroy
    @low_yielding_well = LowYieldingWell.find(params[:id])
    if @low_yielding_well.present?
      @low_yielding_well.destroy
    end
    redirect_to '/water_storage/low_yielding_wells'
  end

  private

  def set_low_yield
    @low_yielding_well = LowYieldingWell.find(params[:id])
  end

  def low_yield_params
    params.require(:low_yielding_well).permit(:low_yield_pic)
  end
  
end
