class UpdateRank < ActiveRecord::Migration[5.2]
  def change
    change_column :ranks, :rank, :integer, unique: true
  end
end
