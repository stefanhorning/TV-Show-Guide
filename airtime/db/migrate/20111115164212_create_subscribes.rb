class CreateSubscribes < ActiveRecord::Migration
  def change
    create_table :subscribes do |t|
      t.integer :user_id
      t.integer :show_id

      t.timestamps
    end
  end
end
