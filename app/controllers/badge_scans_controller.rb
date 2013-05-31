class BadgeScansController < ApplicationController
  respond_to :json

  def index
    @badge_scans = BadgeScan.all

    respond_with @badge_scans
  end

  def show
    @badge_scan = BadgeScan.find(params[:id])

    respond_with @badge_scan
  end

  def create
    @badge_scan = BadgeScan.new(params[:badge_scan])
    
    if @badge_scan.save
    else
      # 404 message?
    end

    respond_with @badge_scan
  end
end