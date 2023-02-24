require "test_helper"

class TeamStatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @team_stat = team_stats(:one)
  end

  test "should get index" do
    get team_stats_url
    assert_response :success
  end

  test "should get new" do
    get new_team_stat_url
    assert_response :success
  end

  test "should create team_stat" do
    assert_difference("TeamStat.count") do
      post team_stats_url, params: { team_stat: { cards_red: @team_stat.cards_red, cards_yellow: @team_stat.cards_yellow, dribbles_attempts: @team_stat.dribbles_attempts, dribbles_past: @team_stat.dribbles_past, dribbles_success: @team_stat.dribbles_success, duels_total: @team_stat.duels_total, duels_won: @team_stat.duels_won, fixture_api_id: @team_stat.fixture_api_id, fouls_committed: @team_stat.fouls_committed, fouls_drawn: @team_stat.fouls_drawn, games_captain: @team_stat.games_captain, games_minutes: @team_stat.games_minutes, games_number: @team_stat.games_number, games_position: @team_stat.games_position, games_rating: @team_stat.games_rating, games_substitute: @team_stat.games_substitute, goals_assists: @team_stat.goals_assists, goals_conceded: @team_stat.goals_conceded, goals_saves: @team_stat.goals_saves, goals_total: @team_stat.goals_total, offsides: @team_stat.offsides, passes_accuracy: @team_stat.passes_accuracy, passes_key: @team_stat.passes_key, passes_total: @team_stat.passes_total, penalty_commited: @team_stat.penalty_commited, penalty_missed: @team_stat.penalty_missed, penalty_saved: @team_stat.penalty_saved, penalty_scored: @team_stat.penalty_scored, penalty_won: @team_stat.penalty_won, player_api_id: @team_stat.player_api_id, shots_on: @team_stat.shots_on, shots_total: @team_stat.shots_total, tackles_blocks: @team_stat.tackles_blocks, tackles_interceptions: @team_stat.tackles_interceptions, tackles_total: @team_stat.tackles_total, team_api_id: @team_stat.team_api_id } }
    end

    assert_redirected_to team_stat_url(TeamStat.last)
  end

  test "should show team_stat" do
    get team_stat_url(@team_stat)
    assert_response :success
  end

  test "should get edit" do
    get edit_team_stat_url(@team_stat)
    assert_response :success
  end

  test "should update team_stat" do
    patch team_stat_url(@team_stat), params: { team_stat: { cards_red: @team_stat.cards_red, cards_yellow: @team_stat.cards_yellow, dribbles_attempts: @team_stat.dribbles_attempts, dribbles_past: @team_stat.dribbles_past, dribbles_success: @team_stat.dribbles_success, duels_total: @team_stat.duels_total, duels_won: @team_stat.duels_won, fixture_api_id: @team_stat.fixture_api_id, fouls_committed: @team_stat.fouls_committed, fouls_drawn: @team_stat.fouls_drawn, games_captain: @team_stat.games_captain, games_minutes: @team_stat.games_minutes, games_number: @team_stat.games_number, games_position: @team_stat.games_position, games_rating: @team_stat.games_rating, games_substitute: @team_stat.games_substitute, goals_assists: @team_stat.goals_assists, goals_conceded: @team_stat.goals_conceded, goals_saves: @team_stat.goals_saves, goals_total: @team_stat.goals_total, offsides: @team_stat.offsides, passes_accuracy: @team_stat.passes_accuracy, passes_key: @team_stat.passes_key, passes_total: @team_stat.passes_total, penalty_commited: @team_stat.penalty_commited, penalty_missed: @team_stat.penalty_missed, penalty_saved: @team_stat.penalty_saved, penalty_scored: @team_stat.penalty_scored, penalty_won: @team_stat.penalty_won, player_api_id: @team_stat.player_api_id, shots_on: @team_stat.shots_on, shots_total: @team_stat.shots_total, tackles_blocks: @team_stat.tackles_blocks, tackles_interceptions: @team_stat.tackles_interceptions, tackles_total: @team_stat.tackles_total, team_api_id: @team_stat.team_api_id } }
    assert_redirected_to team_stat_url(@team_stat)
  end

  test "should destroy team_stat" do
    assert_difference("TeamStat.count", -1) do
      delete team_stat_url(@team_stat)
    end

    assert_redirected_to team_stats_url
  end
end
