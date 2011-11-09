class User < ActiveRecord::Base
  # has_many :shows
  has_and_belongs_to_many :shows
end
