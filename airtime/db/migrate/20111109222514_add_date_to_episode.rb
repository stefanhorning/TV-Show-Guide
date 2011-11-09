class AddDateToEpisode < ActiveRecord::Migration
  def change
    add_column :episodes, :date, :datetime
  end
end
