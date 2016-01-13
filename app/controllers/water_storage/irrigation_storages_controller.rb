class WaterStorage::IrrigationStoragesController < ApplicationController
  before_action :set_irrigation_storage, only: [:show, :edit, :update, :destroy]

  def index
    @irrigation_storages = IrrigationStorage.all
  end

  def show
    if !current_user
      redirect_to '/'
    end
  end

  def new
    if current_user
      @irrigation_storage = IrrigationStorage.new
    else
      redirect_to '/'
    end
  end

  def edit
  end

  def create
    @irrigation_storage = IrrigationStorage.new(irrigation_storage_params)
    respond_to do |format|
      if @irrigation_storage.save
        format.html {redirect_to '/water_storage/irrigation_storages'}
      else
        format.html {render :new}
      end
    end
  end

  def update
    respond_to do |format|
      if @irrigation_storage.save(irrigation_storage_params)
        format.html {respond_to '/water_storage/irrigation_storages'}
      else
        format.html {render :new}
      end
    end
  end

  def destroy
    @irrigation_storage = IrrigationStorage.find(params[:id])
    if @irrigation_storage.present?
      @irrigation_storage.destroy
    end
    redirect_to '/water_storage/irrigation_storages'
  end

  private

  def set_irrigation_storage
    @irrigation_storage = IrrigationStorage.find(params[:id])
  end

  def irrigation_storage_params
    params.require(:irrigation_storage).permit(:irrigation_storage_pic, :irrigation_storage_tag)
  end

end
