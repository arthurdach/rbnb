class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    if params[:category].present? || params[:address].present?
      sql_query = "materials.category ILIKE ? AND users.address ILIKE ?"
      @materials = Material.joins(:user).where(sql_query, "%#{params[:category]}%", "%#{params[:address]}%")
    else
      @materials = Material.all
    end

  end
end

