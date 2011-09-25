class RenameHash < ActiveRecord::Migration
  def up
	  rename_column :scores, :hash, :digest
  end

  def down
	  rename_column :scores, :digest, :hash
  end
end
