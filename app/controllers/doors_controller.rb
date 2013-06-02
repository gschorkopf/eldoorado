class DoorsController < ApplicationController
  respond_to :json

  def index
    @doors = Door.all

    respond_with @doors
  end

  def show
    @door = Door.handle_id(params[:id])

    respond_with @door
  end

  def create
    @door = Door.where(location: params[:door][:location]).first_or_create

    respond_with @door
  end
end