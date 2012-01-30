class Season < ActiveRecord::Base
    belongs_to :show
    has_many :episodes, :dependent => :delete_all

end
