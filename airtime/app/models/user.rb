class User < ActiveRecord::Base
  # has_many :shows
  # has_and_belongs_to_many :shows
  has_many :create_shows_users
  has_many :shows, :through => :create_shows_users
end
