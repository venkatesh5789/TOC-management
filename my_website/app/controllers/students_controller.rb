class StudentsController < ApplicationController

  respond_to :html, :json, :xml

  def index
    @students = Student.all
    respond_with @students
  end

  def show
    @student = Student.find(params[:id])
    respond_with @student
  end

  def new
    @student = Student.new
    respond_with @student
  end

  def edit
    @student = Student.find(params[:id])
  end

  def create
    @student = Student.new(params[:student])
    @student.save
    respond_to do |format|
      if @student.save
        respond_with @student
      else
        format.html { render action: "new" }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  def student_info
    @student = Student.find(params[:id])
    respond_to do | format |
      format.js {render :layout => false}
    end
  end

  def update
    @student = Student.find(params[:id])

    respond_to do |format|
      if @student.update_attributes(params[:student])
        respond_with @student
      else
        format.html { render action: "edit" }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    respond_with @student
  end

 end
