class Show < ActiveRecord::Base
  has_many :subscribes
  has_many :users, :through => :subscribes
  has_many :seasons
  has_many :episodes, :through => :seasons

  # simple search (old):
  #def self.search(search)
  #   if search
  #      find(:all, :conditions => ['name LIKE ?', "%#{search}"])
  #   else
  #     find(:all)
  #   end
  #end

  # search with sphinx (fulltext)
  define_index do
    indexes :name

    set_property :enable_star => true # allows wildcards
   # set_property :min_infix_len => 3 # allows fuzzy search (checking different character orders)

   # has show_id, created_at
  end

end
