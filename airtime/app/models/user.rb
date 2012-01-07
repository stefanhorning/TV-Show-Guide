class User < ActiveRecord::Base
	has_many :subscribes
	has_many :shows, :through => :subscribes

	acts_as_authentic
	validates :name, :email, :presence => true
	validates :email, :uniqueness => true

	# roles
	ROLES = %w[admin loggedin guest banned]
	def is?(role)
  	roles.include?(role.to_s)
	end

end
