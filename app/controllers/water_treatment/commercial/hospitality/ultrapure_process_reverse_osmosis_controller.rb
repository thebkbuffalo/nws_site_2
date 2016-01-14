class WaterTreatment::Commercial::Hospitality::UltrapureProcessReverseOsmosisController < ApplicationController
  before_action :set_ultrapure, only: [:show, :edit, :update, :destroy]

  def index
    @ultrapures = Ultrapure.all
  end

  def show
    if !current_user
      redirect_to '/'
    end
  end

  def new
    if current_user
      @ultrapure = Ultrapure.new
    else
      redirect_to '/'
    end
  end

  def edit
  end

  def create
    @ultrapure = Ultrapure.new(ultrapure_params)
    respond_to do |format|
      if @ultrapure.save
        format.html {redirect_to '/water_treatment/commercial/hospitality/ultrapure_process_reverse_osmosis'}
      else
        format.html {render :new}
      end
    end
  end

  def update
    respond_to do |format|
      if @ultrapure.save(ultrapure_params)
        format.html {redirect_to '/water_treatment/commercial/hospitality/ultrapure_process_reverse_osmosis'}
      else
        format.html {render :new}
      end
    end
  end

  def destroy
    @ultrapure = Ultrapure.find(params[:id])
    if @ultrapure.present?
      @ultrapure.destroy
    end
    redirect_to '/water_treatment/commercial/hospitality/ultrapure_process_reverse_osmosis'
  end

  private

  def set_ultrapure
    @ultrapure = Ultrapure.find(params[:id])
  end

  def ultrapure_params
    params.require(:ultrapure).permit(:ultrapure_pic, :ultrapure_tag)
  end

end
