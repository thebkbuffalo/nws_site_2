class WaterTreatment::Commercial::Hospitality::SoftnersController < ApplicationController
  before_action :set_softner, only: [:show, :edit, :update, :destroy]

  def index
    @softners = Softner.all
  end

  def show
    if !current_user
      redirect_to '/'
    end
  end

  def new
    if current_user
      @softner = Softner.new
    else
      redirect_to '/'
    end
  end

  def edit
  end

  def create
    @softner = Softner.new(softner_params)
    respond_to do |format|
      if @softner.save
        format.html {redirect_to '/water_treatment/commercial/hospitality/softners'}
      else
        format.html {render :new}
      end
    end
  end

  def update
    respond_to do |format|
      if @softner.save(softner_params)
        format.html {redirect_to '/water_treatment/commercial/hospitality/softners'}
      else
        format.html {render :new}
      end
    end
  end

  def destroy
    @softner = Softner.find(params[:id])
    if @softner.present?
      @softner.destroy
    end
    redirect_to '/water_treatment/commercial/hospitality/softners'
  end

  private

  def set_softner
    @softner = Softner.find(params[:id])
  end

  def softner_params
    params.require(:softner).permit(:softner_pic, :softner_tag)
  end

end
