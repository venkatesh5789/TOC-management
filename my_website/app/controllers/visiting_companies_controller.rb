class VisitingCompaniesController < ApplicationController
  # GET /visiting_companies
  # GET /visiting_companies.json
  def index
    @visiting_companies = VisitingCompany.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @visiting_companies }
    end
  end

  # GET /visiting_companies/1
  # GET /visiting_companies/1.json
  def show
    @visiting_company = VisitingCompany.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @visiting_company }
    end
  end

  # GET /visiting_companies/new
  # GET /visiting_companies/new.json
  def new
    u = VisitingCompany.new
    u.student_id = params[:student_id]
    u.attending_company_id = params[:company_id]
    u.visited = false;
    u.save
     respond_to do |format|
      format.html{redirect_to Student.find(u.student_id)} # new.html.erb
     # format.json { render json: u }
    end
  end

  # GET /visiting_companies/1/edit
  def edit
    @visiting_company = VisitingCompany.find(params[:id])
  end

  # POST /visiting_companies
  # POST /visiting_companies.json
  def create
    @visiting_company = VisitingCompany.new(params[:visiting_company])

    respond_to do |format|
      if @visiting_company.save
        format.html { redirect_to @visiting_company, notice: 'Visiting company was successfully created.' }
        format.json { render json: @visiting_company, status: :created, location: @visiting_company }
      else
        format.html { render action: "new" }
        format.json { render json: @visiting_company.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /visiting_companies/1
  # PUT /visiting_companies/1.json
  def update
    @visiting_company = VisitingCompany.find(params[:id])

    respond_to do |format|
      if @visiting_company.update_attributes(params[:visiting_company])
        format.html { redirect_to @visiting_company, notice: 'Visiting company was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @visiting_company.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /visiting_companies/1
  # DELETE /visiting_companies/1.json
  def destroy
    #@visiting_company = VisitingCompany.where(:student_id => params[:student_id], :attending_company_id => params[:company_id])[0]
    @visiting_company = VisitingCompany.find(VisitingCompany.where(:student_id => params[:student_id], :attending_company_id => params[:company_id]).id)
    @visiting_company.destroy

    respond_to do |format|
      format.html { redirect_to visiting_companies_url }
      format.json { head :no_content }
    end
  end
end
