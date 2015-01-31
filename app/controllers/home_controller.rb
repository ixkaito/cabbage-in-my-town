class HomeController < ApplicationController
  def index
    @categories = Category.all
    @prefectures = Prefecture.all
  end
end
