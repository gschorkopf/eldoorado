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
    @entrant = Entrant.new(params[:entrant])
    if @entrant.save
      # 200 message
    else
      # 404 message?
    end

    respond_with @entrant
  end
end