class UpdateHandRank < ActiveRecord::Migration[5.2]
  def change
    rename_column :hands, :rank_id, :rank
  end
end
