class MaterialsController < ApplicationController
before_action :set_material, only: [:show, :destroy, :edit, :update]



  def index
    @materials = Material.all
  end

  def show
  end

  def new
    @material = Material.new
  end

  def create
    @material = Material.new(material_params)
    #@material.user_id = 1
   @material.user = current_user
    if @material.save

      redirect_to materials_path
    else
      render :new
    end
  end

  def update
    @material.update(material_params)
    @material.user = current_user
    if @material.save
      redirect_to materials_path
    else
      render :edit
    end
  end

  def destroy
    @material.destroy
    redirect_to materials_path
  end

  def edit
  end

  private

  def material_params
    params.require(:material).permit(:category, :name, :user_id, :description)
  end

  def set_material
    @material = Material.find(params[:id])
 end

end
