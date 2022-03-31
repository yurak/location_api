class LocationsController < ApplicationController

  skip_before_action :verify_authenticity_token

  def index
    @locations = Location.take(100)
  end

  def create
    l = Location.create(lat: params[:lat], lng: params[:lng])

    render json: { location: l.id}, status: :ok
  end
end