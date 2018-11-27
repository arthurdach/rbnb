class LocationsController < ApplicationController
  def index
    puts "All"
    p @locations = Location.all
    p current_user
    p @locations = Location.where(user: current_user)
  end

   def show
    @location = Location.find(params[:id])
  end

  def new
    @location = Location.new
    @material = Material.find(params[:material_id])
  end

  def create
    @material = Material.find(params[:material_id])
    @location = Location.new(location_params)
    @location.material = @material
    # A revenir dessus plus tard une fois que devise est installe
    @location.user = current_user
    if @location.save
      redirect_to material_validation_path(@material, @location)
    else
      render 'new'
    end
  end

  def validation
    @location = Location.find(params[:id])
  end

  private

  def location_params
    params.require(:location).permit(:id, :start_date, :end_date, :user_id, :material_id)
  end

end


