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
    unless @door = Door.find_by_location(location: params[:door][:location])
      @door = Door.new(params[:door])
      @door.save
    end

    respond_with @door
  end
end