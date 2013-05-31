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
    unless @entrant = Entrant.find_by_first_name_and_last_name(
        params[:entrant][:first_name],
        params[:entrant][:last_name])

      @entrant = Entrant.new(params[:entrant])
      @entrant.save
    end

    respond_with @entrant
  end
end