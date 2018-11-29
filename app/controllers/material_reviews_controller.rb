class MaterialReviewsController < ApplicationController
  def index
    p @material_reviews = MaterialReview.all
    p current_user
    p @material_reviews = MaterialReview.where(user: current_user)
    @material_reviews = policy_scope(material_review)
  end

   def show
    @material_review = MaterialReview.find(params[:id])
    authorize @material_review
  end

  def new
    @material = Material.find(params[:material_id])
    @material_review = MaterialReview.new
    @material_review.material = @material
    authorize @material_review
  end

  def create
    @material = Material.find(params[:material_id])
    @material_review = MaterialReview.new(material_review_params)
    @material_review.material = @material
    authorize @material_review
    if @material_review.save
      redirect_to material_path(@material)
    else
      render 'new'
    end
  end

  private

  def material_review_params
    params.require(:material_review).permit(:id, :rating, :description, :material_id)
  end

end
