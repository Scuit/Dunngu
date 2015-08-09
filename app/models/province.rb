class Province < ActiveRecord::Base
	has_many :news
	has_many :users
	belongs_to :region

	def national?
		name == 'todas'
	end
end
