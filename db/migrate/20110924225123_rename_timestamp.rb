class RenameTimestamp < ActiveRecord::Migration
  def up
	  rename_column :scores, :timestamp, :ts
  end

  def down
	  rename_column :scores, :ts, :timestamp
  end
end
