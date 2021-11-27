# frozen_string_literal: true

class CreateRanks < ActiveRecord::Migration[5.2]
  def change
    create_table :ranks do |t|
      t.string :hand_name, null: false
      t.integer :rank, null: false
    end
    add_index :ranks, :rank
  end
end
