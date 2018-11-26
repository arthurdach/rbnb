class PagesController < ApplicationController
  def home
    @materials = Material.all
  end
end


