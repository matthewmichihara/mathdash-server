class MakeScoreUnique < ActiveRecord::Migration
  def up
	  add_index(:scores, [:player, :score, :ts], :unique => true, :name => "by_player_score_ts")
  end

  def down
  end
end
