class AttendingCompaniesController < ApplicationController

  respond_to :html, :json, :xml

  def index
    @attending_companies = AttendingCompany.all
    respond_with @attending_companies
  end

  def show
    @attending_company = AttendingCompany.find(params[:id])
    respond_with @attending_company
  end

  def new
    @attending_company = AttendingCompany.new
    respond_with @attending_company
  end

  def edit
    @attending_company = AttendingCompany.find(params[:id])
  end

  def create
    @attending_company = AttendingCompany.new(params[:attending_company])

      if @attending_company.save
        respond_with @attending_company
        end

  end

  def update
    @attending_company = AttendingCompany.find(params[:id])

    respond_to do |format|
      if @attending_company.update_attributes(params[:attending_company])
        respond_with @attending_company
      else
        format.html { render action: "edit" }
        format.json { render json: @attending_company.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @attending_company = AttendingCompany.find(params[:id])
    @attending_company.destroy
    respond_with @attending_company
  end
end
