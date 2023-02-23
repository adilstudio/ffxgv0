json.extract! team_event, :id, :type, :detail, :comments, :time_elapsed, :time_extra, :fixture_api_id, :team_api_id, :player_api_id, :assist_player_api_id, :created_at, :updated_at
json.url team_event_url(team_event, format: :json)
