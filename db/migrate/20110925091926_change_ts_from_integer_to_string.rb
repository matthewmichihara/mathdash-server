class ChangeTsFromIntegerToString < ActiveRecord::Migration
  def up
	  change_column :scores, :ts, :string
  end

  def down
	  change_column :scores, :ts, :integer
  end
end
