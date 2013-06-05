class BadgeScansController < ApplicationController
  respond_to :json

  caches_page :index

  def index
    @badge_scans = BadgeScan.find(:all, limit: 5000)

    respond_with @badge_scans
  end

  def show
    @badge_scan = BadgeScan.handle_id(params[:id])

    respond_with @badge_scan
  end

  def create
    @badge_scan = BadgeScan.new(params[:badge_scan])
    
    @badge_scan.save
    
    expire_page action: :index

    respond_with @badge_scan
  end
end