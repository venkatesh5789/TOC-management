class Student < ActiveRecord::Base
  attr_accessible :name, :specialization
 has_many :visiting_companies
end
