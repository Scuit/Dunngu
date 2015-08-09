class User < ActiveRecord::Base
	has_many :news
	has_many :comments

	belongs_to :province
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  def provincial_last
  	
  end
end
