json.array!(@players) do |player|
  json.extract! player, :id, :username, :gravatar_url, :seat, :chips, :cards, :live_hand, :action
  json.url player_url(player, format: :json)
end
