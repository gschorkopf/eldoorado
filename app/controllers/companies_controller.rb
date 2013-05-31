class CompaniesController < ApplicationController
  respond_to :json

  def index
    @companies = Company.all

    respond_with @companies
  end

  def show
    @company = Company.find(params[:id])

    respond_with @company
  end

  def create
    @company = Company.where(
      name: params[:company][:name]).first_or_create
    
    if @company.save
      # 200 message
    else
      # 404 message?
    end

    respond_with @company
  end
end