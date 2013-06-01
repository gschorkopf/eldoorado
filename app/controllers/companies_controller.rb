class CompaniesController < ApplicationController
  respond_to :json

  def index
    @companies = Company.all

    respond_with @companies
  end

  def show
    @company = Company.handle_id(params[:id])

    respond_with @company
  end

  def create
    @company = Company.where(
      name: params[:company][:name]).first_or_create
    
    @company.save

    respond_with @company
  end
end