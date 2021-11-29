class RankUpdate < ActiveRecord::Migration[5.2]
  def change
    remove_column :ranks, :rank
  end
end
