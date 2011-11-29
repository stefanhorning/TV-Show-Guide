class Show < ActiveRecord::Base
  has_many :subscribes
  has_many :users, :through => :subscribes
  has_many :seasons

    def self.search(search)
    if search
      find(:all, :conditions => ['name LIKE ?', "%#{search}"])
    else
      find(:all)
    end
  end

end
