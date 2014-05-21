class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.integer :button
      t.integer :action
      t.integer :last_to_act
      t.string :deck
      t.string :board
      t.integer :pot
      t.integer :current_bet
      t.integer :big_blind
      t.integer :small_blind

      t.timestamps
    end
  end
end
