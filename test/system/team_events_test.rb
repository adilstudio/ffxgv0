require "application_system_test_case"

class TeamEventsTest < ApplicationSystemTestCase
  setup do
    @team_event = team_events(:one)
  end

  test "visiting the index" do
    visit team_events_url
    assert_selector "h1", text: "Team events"
  end

  test "should create team event" do
    visit team_events_url
    click_on "New team event"

    fill_in "Assist player api", with: @team_event.assist_player_api_id
    fill_in "Comments", with: @team_event.comments
    fill_in "Detail", with: @team_event.detail
    fill_in "Fixture api", with: @team_event.fixture_api_id
    fill_in "Player api", with: @team_event.player_api_id
    fill_in "Team api", with: @team_event.team_api_id
    fill_in "Time elapsed", with: @team_event.time_elapsed
    fill_in "Time extra", with: @team_event.time_extra
    fill_in "Type", with: @team_event.type
    click_on "Create Team event"

    assert_text "Team event was successfully created"
    click_on "Back"
  end

  test "should update Team event" do
    visit team_event_url(@team_event)
    click_on "Edit this team event", match: :first

    fill_in "Assist player api", with: @team_event.assist_player_api_id
    fill_in "Comments", with: @team_event.comments
    fill_in "Detail", with: @team_event.detail
    fill_in "Fixture api", with: @team_event.fixture_api_id
    fill_in "Player api", with: @team_event.player_api_id
    fill_in "Team api", with: @team_event.team_api_id
    fill_in "Time elapsed", with: @team_event.time_elapsed
    fill_in "Time extra", with: @team_event.time_extra
    fill_in "Type", with: @team_event.type
    click_on "Update Team event"

    assert_text "Team event was successfully updated"
    click_on "Back"
  end

  test "should destroy Team event" do
    visit team_event_url(@team_event)
    click_on "Destroy this team event", match: :first

    assert_text "Team event was successfully destroyed"
  end
end
