class User < ActiveRecord::Base
	has_many :subscribes, :dependent => :delete_all
	has_many :shows, :through => :subscribes

	acts_as_authentic
	validates :name, :email, :presence => true
	validates :email, :uniqueness => true

	# roles
	ROLES = %w[admin loggedin]

	def role?(role)
  	roles.include?(role.to_s)
	end

	# def role_symbols
 #    [role.to_sym]
 #  end

	# def roles?(role)
	# 	roles.include?(role.to_s)
 #      # return !!self.roles.find_by_name(role.to_s.camelize)
 #  end

end
