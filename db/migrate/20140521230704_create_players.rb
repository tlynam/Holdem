class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :username
      t.string :gravatar_url
      t.integer :seat
      t.integer :chips
      t.string :cards
      t.boolean :live_hand
      t.boolean :action

      t.timestamps
    end
  end
end
