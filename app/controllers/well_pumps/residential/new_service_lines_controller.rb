class WellPumps::Residential::NewServiceLinesController < ApplicationController
  before_action :set_nsl, only: [:show, :edit, :update, :destroy]

  def index
    @new_service_lines = NewServiceLine.all
  end

  def show
    if !current_user
      redirect_to '/'
    end
  end

  def new
    if current_user
      @new_service_line = NewServiceLine.new
    else
      redirect_to '/'
    end
  end

  def edit
  end

  def create
    @new_service_line = NewServiceLine.new(nsl_params)
    respond_to do |format|
      if @new_service_line.save
        format.html {redirect_to '/well_pumps/residential/new_service_lines'}
      else
        format.html {render :new}
      end
    end
  end

  def update
    respond_to do |format|
      if @new_service_line.update(nsl_params)
        format.html {redirect_to '/well_pumps/residential/new_service_lines'}
      else
        format.html {render :new}
      end
    end
  end

  def destroy
    @new_service_line = NewServiceLine.find(params[:id])
    if @new_service_line.present?
      @new_service_line.destroy
    end
    redirect_to '/well_pumps/residential/new_service_lines'
  end

  private

  def set_nsl
    @new_service_line = NewServiceLine.find(params[:id])
  end

  def nsl_params
    params.require(:new_service_line).permit(:nsl_pic, :nsl_tag)
  end
end
