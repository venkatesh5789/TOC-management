class VisitingCompaniesController < ApplicationController

  respond_to :html, :json, :xml

  def index
    @visiting_companies = VisitingCompany.all
    respond_with @visiting_companies
  end

  def show
    @visiting_company = VisitingCompany.find(params[:id])
    respond_with @visiting_company
  end

  def new
    u = VisitingCompany.new
    u.student_id = params[:student_id]
    u.attending_company_id = params[:company_id]
    u.visited = false;
    u.save
    respond_with u
  end

  # GET /visiting_companies/1/edit
  def edit
    @visiting_company = VisitingCompany.find(params[:id])
  end

  def create
    @visiting_company = VisitingCompany.new(params[:visiting_company])

    respond_to do |format|
      if @visiting_company.save
        respond_with @visiting_company
      else
        format.html { render action: "new" }
        format.json { render json: @visiting_company.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @visiting_company = VisitingCompany.find(params[:id])
    @visiting_company.visited = !@visiting_company.visited
    @visiting_company.save
    student_id = VisitingCompany.find(params[:id]).student_id
    respond_to do |format|
      format.html{redirect_to Student.find(student_id)}
    end

  end

  # DELETE /visiting_companies/1
  # DELETE /visiting_companies/1.json
  def destroy
    student_id = VisitingCompany.find(params[:id]).student_id
    @visiting_company = VisitingCompany.find(params[:id])
    @visiting_company.destroy

    respond_to do |format|
      format.html{redirect_to Student.find(student_id)}
    end
  end
end
