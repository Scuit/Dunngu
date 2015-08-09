class News < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  belongs_to :province

  has_many :comments
end
