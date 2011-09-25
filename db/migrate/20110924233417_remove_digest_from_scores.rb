class RemoveDigestFromScores < ActiveRecord::Migration
  def up
    remove_column :scores, :digest
  end

  def down
    add_column :scores, :digest, :string
  end
end
