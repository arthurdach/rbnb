class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @materials = Material.all
  end
end
