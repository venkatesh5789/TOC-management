class AttendingCompany < ActiveRecord::Base
  has_many :students
end
