json.extract! player, :id, :player_api_id, :first_name, :last_name, :commun_name, :positioon, :team_api_id, :created_at, :updated_at
json.url player_url(player, format: :json)
