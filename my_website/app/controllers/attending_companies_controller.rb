class AttendingCompaniesController < ApplicationController
  # GET /attending_companies
  # GET /attending_companies.json
  def index
    @attending_companies = AttendingCompany.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @attending_companies }
    end
  end

  # GET /attending_companies/1
  # GET /attending_companies/1.json
  def show
    @attending_company = AttendingCompany.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @attending_company }
    end
  end

  # GET /attending_companies/new
  # GET /attending_companies/new.json
  def new
    @attending_company = AttendingCompany.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @attending_company }
    end
  end

  # GET /attending_companies/1/edit
  def edit
    @attending_company = AttendingCompany.find(params[:id])
  end

  # POST /attending_companies
  # POST /attending_companies.json
  def create
    @attending_company = AttendingCompany.new(params[:attending_company])

    respond_to do |format|
      if @attending_company.save
        format.html { redirect_to @attending_company, notice: 'Attending company was successfully created.' }
        format.json { render json: @attending_company, status: :created, location: @attending_company }
      else
        format.html { render action: "new" }
        format.json { render json: @attending_company.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /attending_companies/1
  # PUT /attending_companies/1.json
  def update
    @attending_company = AttendingCompany.find(params[:id])

    respond_to do |format|
      if @attending_company.update_attributes(params[:attending_company])
        format.html { redirect_to @attending_company, notice: 'Attending company was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @attending_company.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attending_companies/1
  # DELETE /attending_companies/1.json
  def destroy
    @attending_company = AttendingCompany.find(params[:id])
    @attending_company.destroy

    respond_to do |format|
      format.html { redirect_to attending_companies_url }
      format.json { head :no_content }
    end
  end
end
