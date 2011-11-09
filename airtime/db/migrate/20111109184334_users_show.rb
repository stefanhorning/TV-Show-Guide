class UsersShows < ActiveRecord::Migration
  def up
  	create_table 'users_shows', :id => false do |t|
    	t.column :user_id, :integer
    	t.column :show_id, :integer
  	end
  end

  def down
  	drop_table 'users_shows'
  end
end
