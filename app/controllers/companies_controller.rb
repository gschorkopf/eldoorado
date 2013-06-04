class CompaniesController < ApplicationController
  respond_to :json

  caches_page :index

  def index
    @companies = Company.all

    respond_with @companies
  end

  def show
    @company = Company.handle_id(params[:id])

    respond_with @company
  end

  def create
    unless @company = Company.find_by_name(params[:company][:name])
      @company = Company.new(params[:company])
      @company.save
    end

    respond_with @company
  end
end