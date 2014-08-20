class Article < ActiveRecord::Base
	#them 
	has_many :user_comment, :class_name => 'comment' #doi truong tim kiem
	has_many :comnent,:dependence => :destroy
	#:counter_cache =>true//dem tren cache khong dem tren database
	validates :title, :content, :published_at, :presence => true #custom validation
	validate :published_at_in_future,:title_longer_than_10, :on 
	# scope :available , ->{
	# 	where("published_at <= ?",Date.today)
	# }
	scope :available. lambda{ |num_result|
		puts num_result
		where("published_at <= ?",Date.today).order(:id).limit(num_result)
	}
	#callback
	before_validation :puts_before_validate # puts_before_validate is missing method,truoc khi save vao databe phai enscript password
	before_save :puts_before_save
	before_create :puts_before_create
	before_destroy :puts_before_destroy
	after_create :puts_after_create
	after_save :puts_after_save
	after_destroy :puts_after_destroy
	def self_class_method_here
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
