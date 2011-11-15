class User < ActiveRecord::Base
  has_many :subscribes
  has_many :shows, :through => :subscribes
end
