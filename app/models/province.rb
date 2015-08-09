class Province < ActiveRecord::Base
	has_many :news
	belongs_to :region
end
