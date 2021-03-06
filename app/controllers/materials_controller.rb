class MaterialsController < ApplicationController
  before_action :set_material, only: [:show, :destroy, :edit, :update]

  def index
    @materials = policy_scope(Material).order(created_at: :desc)
  end

  def show
    authorize @material
    @reviews = @material.material_reviews
    @user = @material.user
    @markers = [ { lat: @user.latitude, lng: @user.longitude } ]
  end

  def new
    @material = Material.new
    authorize @material
  end

  def create
    @material = Material.new(material_params)
    @material.user = current_user
    if @material.save

      redirect_to materials_path
    else
      render :new
    end
    authorize @material
  end

  def update
    @material.update(material_params)
    @material.user = current_user
    if @material.save
      redirect_to materials_path
    else
      render :edit
    end
    authorize @material
  end

  def destroy
    @material.destroy
    authorize @material
    redirect_to materials_path
  end

  def edit
    authorize @material
  end


  private

  def material_params
    params.require(:material).permit(:category, :name, :user_id, :description, :photo, :price, :available)
  end

  def set_material
    @material = Material.find(params[:id])
 end

end
