class Show < ActiveRecord::Base
  has_many :seasons
  #has_many :users
  has_and_belongs_to_many :users
end
