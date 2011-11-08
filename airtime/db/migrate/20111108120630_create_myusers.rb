class CreateMyusers < ActiveRecord::Migration
  def change
    create_table :myusers do |t|
      t.string :user
      t.string :tv_show
      t.int :season
      t.int :episode

      t.timestamps
    end
  end
end
