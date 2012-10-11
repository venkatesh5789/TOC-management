class VisitingCompany < ActiveRecord::Base
  attr_accessible  :student_id, :attending_company_id, :visited
  belongs_to :student
  end
