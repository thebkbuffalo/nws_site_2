class WaterTreatment::Commercial::Hospitality::ChlorineRemovalsController < ApplicationController
  before_action :set_chlorine, only: [:show, :edit, :update, :destroy]

  def index
    @chlorine_removals = ChlorineRemoval.all
  end

  def show
    if !current_user
      redirect_to '/'
    end
  end

  def new
    if current_user
      @chlorine_removal = ChlorineRemoval.new
    else
      redirect_to '/'
    end
  end

  def edit
  end

  def create
    @chlorine_removal = ChlorineRemoval.new(chlorine_params)
    respond_to do |format|
      if @chlorine_removal.save
        format.html {redirect_to '/water_treatment/commercial/hospitality/chlorine_removals'}
      else
        format.html {render :new}
      end
    end
  end

  def update
    respond_to do |format|
      if @chlorine_removal.save(chlorine_params)
        format.html {redirect_to '/water_treatment/commercial/hospitality/chlorine_removals'}
      else
        fotmat.html {render :new}
      end
    end
  end

  def destroy
    @chlorine_removal = ChlorineRemoval.find(params[:id])
    if @chlorine_removal.present?
      @chlorine_removal.destroy
    end
    redirect_to '/water_treatment/commercial/hospitality/chlorine_removals'
  end

  private

  def set_chlorine
    @chlorine_removal = ChlorineRemoval.find(params[:id])
  end

  def chlorine_params
    params.require(:chlorine_removal).permit(:chlorine_pic, :chlorine_tag)
  end

end
