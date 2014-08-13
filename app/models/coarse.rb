class Coarse < ActiveRecord::Base
	has_many :registrations
	has_many :students, :througj => :registrations
end
