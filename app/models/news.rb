class News < ActiveRecord::Base
	belongs_to :user
	belongs_to :sub_category
	belongs_to :province

	has_many :comments

	scope :national_last, -> { joins(:province).where("provinces.name = 'todas'").limit(4) }

	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
