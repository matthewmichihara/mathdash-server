class ChangeTimestampToInt < ActiveRecord::Migration
  def up
	  change_column :scores, :ts, :integer
  end

  def down
	  change_column :scores, :ts, :timestamp
  end
end
