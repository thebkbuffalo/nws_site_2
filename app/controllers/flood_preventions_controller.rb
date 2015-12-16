class FloodPreventionsController < ApplicationController
  before_action :set_flood_prevention, only: [:show, :edit, :update, :destroy]

  def index
    @flood_preventions = FloodPrevention.all
  end

  def show
    if !current_user
      redirect_to '/'
    end
  end

  def new
    if current_user
      @flood_prevention = FloodPrevention.new
    else
      redirect_to '/'
    end
  end

  def edit
  end

  def create
    @flood_prevention = FloodPrevention.new(flood_prevention_params)
    respond_to do |format|
      if @flood_prevention.save
        format.html {redirect_to '/flood_preventions'}
      else
        format.html {render :new}
      end
    end
  end

  def update
    respond_to do |format|
      if @flood_prevention.save(flood_prevention_params)
        format.html {redirect_to '/flood_preventions'}
      else
        format.html {render :new}
      end
    end
  end

  def destroy
    @flood_prevention = FloodPrevention.find(params[:id])
    if @flood_prevention.present?
      @flood_prevention.destroy
    end
    redirect_to '/flood_preventions'
  end

  private

  def set_flood_prevention
    @flood_prevention = FloodPrevention.find(params[:id])
  end

  def flood_prevention_params
    params.require(:flood_prevention).permit(:flood_pic)
  end

end
