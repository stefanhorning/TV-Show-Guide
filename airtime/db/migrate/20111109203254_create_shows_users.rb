class CreateShowsUsers < ActiveRecord::Migration
  def up
    create_table :shows_users, :id => false do |t|
      t.integer :show_id
    	t.integer :user_id
    end
  end

  def down
    drop_table :shows_users
  end
end
