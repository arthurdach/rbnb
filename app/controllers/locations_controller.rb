class LocationsController < ApplicationController
  def index
    puts "All"
    p @locations = Location.all
    p current_user
    p @locations = Location.where(user: current_user)
    @locations = policy_scope(Location)
  end

   def show
    @location = Location.find(params[:id])
    authorize @location
  end

  def new
    @material = Material.find(params[:material_id])
    @location = Location.new
    @location.material = @material
    authorize @location
  end

  def create
    @material = Material.find(params[:material_id])
    @location = Location.new(location_params)
    @location.material = @material
    authorize @location
    @location.user = current_user
    if @location.save
      redirect_to material_validation_path(@material, @location)
    else
      render 'new'
    end
  end

  def validation
    @location = Location.find(params[:id])
    authorize @location
  end

  private

  def location_params
    params.require(:location).permit(:id, :start_date, :end_date, :user_id, :material_id)
  end

end


