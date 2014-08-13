class Student < ActiveRecord::Base
	has_many :registrations
	has_many :coarses,:through => :registrations
end
