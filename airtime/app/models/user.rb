class User < ActiveRecord::Base
	has_many :subscribes
	has_many :shows, :through => :subscribes
	# belongs_to :role
	has_many :roles

	acts_as_authentic
	validates :name, :email, :presence => true
	validates :email, :uniqueness => true

	def role_symbols
    	(roles || []).map {|r| r.title.to_sym}
  end
end
