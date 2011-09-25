class AddHashToScores < ActiveRecord::Migration
  def change
    add_column :scores, :hash, :string
  end
end
