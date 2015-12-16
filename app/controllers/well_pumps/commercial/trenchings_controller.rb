class WellPumps::Commercial::TrenchingsController < ApplicationController
  before_action :set_trenching, only: [:show, :edit, :update, :destroy]

  def index
    @trenchings = Trenching.all
  end

  def show
    if !current_user
      redirect_to '/'
    end
  end

  def new
    if current_user
      @trenching = Trenching.new
    else
      redirect_to '/'
    end
  end

  def edit
  end

  def create
    @trenching = Trenching.new(trenching_params)
    respond_to do |format|
      if @trenching.save
        format.html {redirect_to '/well_pumps/commercial/trenchings'}
      else
        format.html{render :new}
      end
    end
  end

  def update
    respond_to do |format|
      if @trenching.update(trenching_params)
        format.html {redirect_to '/well_pumps/commercial/trenchings'}
      else
        format.html {render :new}
      end
    end
  end

  def destroy
    @trenching = Trenching.find(params[:id])
    if @trenching.present?
      @trenching.destroy
    end
    redirect_to '/well_pumps/commercial/trenchings'
  end

  private

  def set_trenching
    @trenching = Trenching.find(params[:id])
  end

  def trenching_params
    params.require(:trenching).permit(:trench_pic)
  end

end
