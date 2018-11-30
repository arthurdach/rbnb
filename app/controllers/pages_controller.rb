class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    if params[:category].present? || params[:address].present?
      sql_query = "materials.category ILIKE ? AND users.address ILIKE ?"
      @materials = Material.joins(:user).where(sql_query, "%#{params[:category]}%", "%#{params[:address]}%")
      @markers = []
      @query = true
      @materials.each do |material|
        user = material.user
        @markers << { lat: user.latitude, lng: user.longitude }
      end
    else
      @query = false
      @materials = Material.all
    end

  end
end

