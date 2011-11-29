class CreateUserSessions < ActiveRecord::Migration
  def up
  	create_table :user_sessions do |t|
  		t.timestamps
  	end
  end

  def down
	drop_table :user_sessions
  end
end
