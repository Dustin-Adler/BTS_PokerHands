class CreateHands < ActiveRecord::Migration[5.2]
  def change
    create_table :hands do |t|
      t.string :card1, null: false
      t.string :card2, null: false
      t.string :card3, null: false
      t.string :card4, null: false
      t.string :card5, null: false
      t.integer :rank_id, null: false

      t.timestamps
    end
  end
end
