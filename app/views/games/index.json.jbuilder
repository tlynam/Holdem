json.array!(@games) do |game|
  json.extract! game, :id, :name, :button, :action, :last_to_act, :deck, :board, :pot, :current_bet, :big_blind, :small_blind
  json.url game_url(game, format: :json)
end
