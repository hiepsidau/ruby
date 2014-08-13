class Article < ActiveRecord::Base
	#them 
	has_many :user_comment, :class_name => 'comment' #doi truong tim kiem
	#:dependence
	#:counter_cache =>true//dem tren cache khong dem tren database
	validates :title, :content, :published_at, :presence => true #custom validation
	validate :published_at_in_future,:title_longer_than_10, :on 
	def self.class_method_here
		puts 'ss'
	end
	def published_at_in_future
		if self.published_at && self.published_at > Date.today 
			self.errors.add(:published_at, " should be in future")
		end
	end
	def title_longer_than_10
		if self.title && self.title.length < 10
			self.errors.add(:title," should longer than 10 char")
		end
	end
end
