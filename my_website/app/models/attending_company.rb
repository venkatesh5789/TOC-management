class AttendingCompany < ActiveRecord::Base
  attr_accessible :name, :day1, :day2, :specialization
  has_many :students
end
