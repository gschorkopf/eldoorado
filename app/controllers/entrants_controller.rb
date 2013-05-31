class EntrantsController < ApplicationController
  respond_to :json

  def index
    @entrants = Entrant.all

    respond_with @entrants
  end

  def show
    @entrant = Entrant.find(params[:id])

    respond_with @entrant
  end

  def create
    params = params[:entrant]

    @entrant = Entrant.where(
      first_name: params[:first_name],
      last_name: params[:last_name],
      guest: params[:guest]).first_or_create
    @entrant.company_id = params[:company_id]
    @entrant.access_type = params[:access_type]
    @entrant.save

    respond_with @entrant
  end
end