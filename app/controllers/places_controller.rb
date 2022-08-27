class PlacesController < ApplicationController
  def index
    places = Place.all
    render json: places.as_json
  end

  def create
    place = Place.new(name: params[:name],
                      address: params[:address],
                      image_url: params[:image_url])
    place.save
    render json: place.as_json
  end
end
