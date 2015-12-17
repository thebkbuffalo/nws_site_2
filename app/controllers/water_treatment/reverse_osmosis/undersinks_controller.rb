class WaterTreatment::ReverseOsmosis::UndersinksController < ApplicationController
  before_action :set_undersink, only: [:show, :edit, :update, :destroy]

  def index
    @undersinks = Undersink.all
  end

  def show
    if !current_user
      redirect_to '/'
    end
  end

  def new
    if current_user
      @undersink = Undersink.new
    else
      redirect_to '/'
    end
  end

  def edit
  end

  def create
    @undersink = Undersink.new(undersink_params)
    respond_to do |format|
      if @undersink.save
        format.html {redirect_to '/water_treatment/reverse_osmosis/undersinks'}
      else
        format.html {render :new}
      end
    end
  end

  def update
    respond_to do |format|
      if @undersink.save(undersink_params)
        format.html {redirect_to '/water_treatment/reverse_osmosis/undersinks'}
      else
        format.html {render :new}
      end
    end
  end

  def destroy
    @undersink = Undersink.find(params[:id])
    if @undersink.present?
      @undersink.destroy
    end
    redirect_to '/water_treatment/reverse_osmosis/undersinks'
  end

  private

  def set_undersink
    @undersink = Undersink.find(params[:id])
  end

  def undersink_params
    params.require(:undersink).permit(:undersink_pic)
  end
end
