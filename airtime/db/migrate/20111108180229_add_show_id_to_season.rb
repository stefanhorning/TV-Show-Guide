class AddShowIdToSeason < ActiveRecord::Migration
  def change
    add_column :seasons, :show_id, :integer
  end
end
