class WaterTreatment::Commercial::Hospitality::CustomApplicationsController < ApplicationController
  before_action :set_custom_application, only: [:show, :edit, :update, :destroy]

  def index
    @custom_applications = CustomApplication.all
  end

  def show
    if !current_user
      redirect_to '/'
    end
  end

  def new
    if current_user
      @custom_application = CustomApplication.new
    else
      redirect_to '/'
    end
  end

  def edit
  end

  def create
    @custom_application = CustomApplication.new(custom_app_params)
    respond_to do |format|
      if @custom_application.save
        format.html {redirect_to '/water_treatment/commercial/hospitality/custom_applications'}
      else
        format.html {render :new}
      end
    end
  end

  def update
    respond_to do |format|
      if @custom_application = CustomApplication.save(custom_app_params)
        format.html {redirect_to '/water_treatment/commercial/hospitality/custom_applications'}
      else
        format.html {render :new}
      end
    end
  end

  def destroy
    @custom_application = CustomApplication.find(params[:id])
    if @custom_application.present?
      @custom_application.destroy
    end
    redirect_to '/water_treatment/commercial/hospitality/custom_applications'
  end

  private

  def set_custom_application
    @custom_application = CustomApplication.find(params[:id])
  end

  def custom_app_params
    params.require(:custom_application).permit(:custom_app_pic, :custom_app_tag)
  end
end
