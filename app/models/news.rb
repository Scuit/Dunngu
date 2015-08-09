class News < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  belongs_to :province

  has_many :comments

  scope :national_last, -> { joins(:province).where("provinces.name = 'todas'").limit(4) }

end
