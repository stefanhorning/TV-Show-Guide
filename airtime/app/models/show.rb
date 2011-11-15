class Show < ActiveRecord::Base
  has_many :seasons
  #has_many :users
  #has_and_belongs_to_many :users
  has_many :create_shows_users
  has_many :users, :through => :create_shows_users
end
