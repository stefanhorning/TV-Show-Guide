class Show < ActiveRecord::Base
  has_many :subscribes
  has_many :users, :through => :subscribes
  has_many :seasons
end
