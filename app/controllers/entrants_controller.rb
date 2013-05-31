class EntrantsController < ApplicationController
  respond_to :json

  def index
    @entrants = Entrant.all

    respond_with @entrants
  end

  def show
    @entrant = Entrant.find(params[:id])

    respond_with @entrant, include: :badge_scans
  end

  def create
    params = params[:entrant]

    @entrant = Entrant.new(params)
    @entrant.save

    respond_with @entrant
  end
end