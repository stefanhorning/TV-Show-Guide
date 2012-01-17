class ChangeAllColumnTypes < ActiveRecord::Migration
  def up
    change_table :seasons do  |t|
      t.change :description, :text
    end

    change_table :shows do  |t|
      t.change :description, :text
    end
  end

  def down
     change_table :seasons do  |t|
      t.change :description, :string
     end

    change_table :shows do  |t|
      t.change :description, :string
    end
  end
end
