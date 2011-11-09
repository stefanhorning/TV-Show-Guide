class AddSeasonIdToEpisode < ActiveRecord::Migration
  def change
    add_column :episodes, :season_id, :integer
  end
end
