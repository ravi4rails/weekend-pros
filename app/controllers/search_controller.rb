class SearchController < ApplicationController
  
  def search_pro
    latitude = params[:search_pros][:lat]
    longitude = params[:search_pros][:long]
    @professionals = User.near([latitude, longitude], 50, :units => :km)
  end

end
