require "application_system_test_case"

class TeamStatsTest < ApplicationSystemTestCase
  setup do
    @team_stat = team_stats(:one)
  end

  test "visiting the index" do
    visit team_stats_url
    assert_selector "h1", text: "Team stats"
  end

  test "should create team stat" do
    visit team_stats_url
    click_on "New team stat"

    fill_in "Cards red", with: @team_stat.cards_red
    fill_in "Cards yellow", with: @team_stat.cards_yellow
    fill_in "Dribbles attempts", with: @team_stat.dribbles_attempts
    fill_in "Dribbles past", with: @team_stat.dribbles_past
    fill_in "Dribbles success", with: @team_stat.dribbles_success
    fill_in "Duels total", with: @team_stat.duels_total
    fill_in "Duels won", with: @team_stat.duels_won
    fill_in "Fixture api", with: @team_stat.fixture_api_id
    fill_in "Fouls committed", with: @team_stat.fouls_committed
    fill_in "Fouls drawn", with: @team_stat.fouls_drawn
    check "Games captain" if @team_stat.games_captain
    fill_in "Games minutes", with: @team_stat.games_minutes
    fill_in "Games number", with: @team_stat.games_number
    fill_in "Games position", with: @team_stat.games_position
    fill_in "Games rating", with: @team_stat.games_rating
    check "Games substitute" if @team_stat.games_substitute
    fill_in "Goals assists", with: @team_stat.goals_assists
    fill_in "Goals conceded", with: @team_stat.goals_conceded
    fill_in "Goals saves", with: @team_stat.goals_saves
    fill_in "Goals total", with: @team_stat.goals_total
    fill_in "Offsides", with: @team_stat.offsides
    fill_in "Passes accuracy", with: @team_stat.passes_accuracy
    fill_in "Passes key", with: @team_stat.passes_key
    fill_in "Passes total", with: @team_stat.passes_total
    fill_in "Penalty commited", with: @team_stat.penalty_commited
    fill_in "Penalty missed", with: @team_stat.penalty_missed
    fill_in "Penalty saved", with: @team_stat.penalty_saved
    fill_in "Penalty scored", with: @team_stat.penalty_scored
    fill_in "Penalty won", with: @team_stat.penalty_won
    fill_in "Player api", with: @team_stat.player_api_id
    fill_in "Shots on", with: @team_stat.shots_on
    fill_in "Shots total", with: @team_stat.shots_total
    fill_in "Tackles blocks", with: @team_stat.tackles_blocks
    fill_in "Tackles interceptions", with: @team_stat.tackles_interceptions
    fill_in "Tackles total", with: @team_stat.tackles_total
    fill_in "Team api", with: @team_stat.team_api_id
    click_on "Create Team stat"

    assert_text "Team stat was successfully created"
    click_on "Back"
  end

  test "should update Team stat" do
    visit team_stat_url(@team_stat)
    click_on "Edit this team stat", match: :first

    fill_in "Cards red", with: @team_stat.cards_red
    fill_in "Cards yellow", with: @team_stat.cards_yellow
    fill_in "Dribbles attempts", with: @team_stat.dribbles_attempts
    fill_in "Dribbles past", with: @team_stat.dribbles_past
    fill_in "Dribbles success", with: @team_stat.dribbles_success
    fill_in "Duels total", with: @team_stat.duels_total
    fill_in "Duels won", with: @team_stat.duels_won
    fill_in "Fixture api", with: @team_stat.fixture_api_id
    fill_in "Fouls committed", with: @team_stat.fouls_committed
    fill_in "Fouls drawn", with: @team_stat.fouls_drawn
    check "Games captain" if @team_stat.games_captain
    fill_in "Games minutes", with: @team_stat.games_minutes
    fill_in "Games number", with: @team_stat.games_number
    fill_in "Games position", with: @team_stat.games_position
    fill_in "Games rating", with: @team_stat.games_rating
    check "Games substitute" if @team_stat.games_substitute
    fill_in "Goals assists", with: @team_stat.goals_assists
    fill_in "Goals conceded", with: @team_stat.goals_conceded
    fill_in "Goals saves", with: @team_stat.goals_saves
    fill_in "Goals total", with: @team_stat.goals_total
    fill_in "Offsides", with: @team_stat.offsides
    fill_in "Passes accuracy", with: @team_stat.passes_accuracy
    fill_in "Passes key", with: @team_stat.passes_key
    fill_in "Passes total", with: @team_stat.passes_total
    fill_in "Penalty commited", with: @team_stat.penalty_commited
    fill_in "Penalty missed", with: @team_stat.penalty_missed
    fill_in "Penalty saved", with: @team_stat.penalty_saved
    fill_in "Penalty scored", with: @team_stat.penalty_scored
    fill_in "Penalty won", with: @team_stat.penalty_won
    fill_in "Player api", with: @team_stat.player_api_id
    fill_in "Shots on", with: @team_stat.shots_on
    fill_in "Shots total", with: @team_stat.shots_total
    fill_in "Tackles blocks", with: @team_stat.tackles_blocks
    fill_in "Tackles interceptions", with: @team_stat.tackles_interceptions
    fill_in "Tackles total", with: @team_stat.tackles_total
    fill_in "Team api", with: @team_stat.team_api_id
    click_on "Update Team stat"

    assert_text "Team stat was successfully updated"
    click_on "Back"
  end

  test "should destroy Team stat" do
    visit team_stat_url(@team_stat)
    click_on "Destroy this team stat", match: :first

    assert_text "Team stat was successfully destroyed"
  end
end
