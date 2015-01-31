class TownsController < ApplicationController
  def index
    @prefecture = Prefecture.find(params[:prefecture_id])
    @city       = City.find(params[:city_id])
    @towns      = @city.towns
  end
end
