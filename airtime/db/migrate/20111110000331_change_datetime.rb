class ChangeDatetime < ActiveRecord::Migration
  def change
    change_table :shows do |t|
      t.remove :date
      t.date :date
    end
  end
end
