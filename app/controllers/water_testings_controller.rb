class WaterTestingsController < ApplicationController
  before_action :set_water_testing, only: [:show, :edit, :update, :destroy]

  def index
    @water_testings = WaterTesting.all
  end

  def show
    if !current_user
      redirect_to '/'
    end
  end

  def new
    if current_user
      @water_testing = WaterTesting.new
    else
      redirect_to '/'
    end
  end

  def edit
  end

  def create
    @water_testing = WaterTesting.new(water_testing_params)
    respond_to do |format|
      if @water_testing.save
        format.html {redirect_to '/water_testings'}
      else
        format.html {render :new}
      end
    end
  end

  def update
    respond_to do |format|
      if @water_testing.save(water_testing_params)
        format.html {respond_to '/water_testings'}
      else
        format.html {render :new}
      end
    end
  end

  def destroy
    @water_testing = WaterTesting.find(params[:id])
    if @water_testing.present?
      @water_testing.destroy
    end
    redirect_to '/water_testings'
  end

  private

  def set_water_testing
    @water_testing = WaterTesting.find(params[:id])
  end

  def water_testing_params
    params.require(:water_testing).permit(:water_testing_pic, :water_testing_tag)
  end
end
