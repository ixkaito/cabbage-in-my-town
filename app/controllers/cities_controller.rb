class CitiesController < ApplicationController
  def index
    @prefecture = Prefecture.find(params[:prefecture_id])
    @cities     = @prefecture.cities
  end
end
