class LocationsController < ApplicationController
  def new
    @location = Location.new
    @material = Material.find(params[:material_id])
  end

  def create
    @material = Material.find(params[:material_id])
    @location = Location.new(location_params)
    @location.material = @material
    if @location.save
      redirect_to material_path(@material)
    else
      render 'new'
    end
  end

  private

  def location_params
    params.require(:location).permit(:id, :start_date, :end_date, :user_id, :material_id)
  end

end


