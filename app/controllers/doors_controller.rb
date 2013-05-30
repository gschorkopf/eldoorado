class DoorsController < ApplicationController
  respond_to :json

  def index
    @doors = Door.all

    respond_with @doors
  end

  def show
    @door = Door.find(params[:id])

    respond_with @door
  end

  def create
    @door = Door.new(params[:door])
    if @door.save
      # 200 message
    else
      # 404 message?
    end

    respond_with @door
  end
end