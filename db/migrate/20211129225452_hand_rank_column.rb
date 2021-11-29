class HandRankColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :hands, :rank, :rank_id
  end
end
