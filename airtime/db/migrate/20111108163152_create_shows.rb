class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.string :name
      t.string :description
      t.datetime :date
      t.timestamps
    end
  end
end
