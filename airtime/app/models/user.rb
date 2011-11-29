class User < ActiveRecord::Base
	has_many :subscribes
	has_many :shows, :through => :subscribes

	acts_as_authentic
	validates :name, :email, :presence => true
	validates :email, :uniqueness => true

end
