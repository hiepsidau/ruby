class Registration < ActiveRecord::Base
	belongs_to :coarse
	belongs_to :student
end
