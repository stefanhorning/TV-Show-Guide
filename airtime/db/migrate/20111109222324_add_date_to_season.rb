class AddDateToSeason < ActiveRecord::Migration
  def change
    add_column :seasons, :date, :date
  end
end
