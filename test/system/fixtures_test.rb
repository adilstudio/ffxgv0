require "application_system_test_case"

class FixturesTest < ApplicationSystemTestCase
  setup do
    @fixture = fixtures(:one)
  end

  test "visiting the index" do
    visit fixtures_url
    assert_selector "h1", text: "Fixtures"
  end

  test "should create fixture" do
    visit fixtures_url
    click_on "New fixture"

    fill_in "Date", with: @fixture.date
    fill_in "Fixture api", with: @fixture.fixture_api_id
    fill_in "League api", with: @fixture.league_api_id
    fill_in "Periods first", with: @fixture.periods_first
    fill_in "Periods second", with: @fixture.periods_second
    fill_in "Referee", with: @fixture.referee
    fill_in "Status elapsed", with: @fixture.status_elapsed
    fill_in "Status long", with: @fixture.status_long
    fill_in "Status short", with: @fixture.status_short
    fill_in "Teams home api", with: @fixture.teams_home_api_id
    fill_in "Timestamp", with: @fixture.timestamp
    fill_in "Timezone", with: @fixture.timezone
    fill_in "Venue city", with: @fixture.venue_city
    fill_in "Venue", with: @fixture.venue_id
    fill_in "Venue name", with: @fixture.venue_name
    click_on "Create Fixture"

    assert_text "Fixture was successfully created"
    click_on "Back"
  end

  test "should update Fixture" do
    visit fixture_url(@fixture)
    click_on "Edit this fixture", match: :first

    fill_in "Date", with: @fixture.date
    fill_in "Fixture api", with: @fixture.fixture_api_id
    fill_in "League api", with: @fixture.league_api_id
    fill_in "Periods first", with: @fixture.periods_first
    fill_in "Periods second", with: @fixture.periods_second
    fill_in "Referee", with: @fixture.referee
    fill_in "Status elapsed", with: @fixture.status_elapsed
    fill_in "Status long", with: @fixture.status_long
    fill_in "Status short", with: @fixture.status_short
    fill_in "Teams home api", with: @fixture.teams_home_api_id
    fill_in "Timestamp", with: @fixture.timestamp
    fill_in "Timezone", with: @fixture.timezone
    fill_in "Venue city", with: @fixture.venue_city
    fill_in "Venue", with: @fixture.venue_id
    fill_in "Venue name", with: @fixture.venue_name
    click_on "Update Fixture"

    assert_text "Fixture was successfully updated"
    click_on "Back"
  end

  test "should destroy Fixture" do
    visit fixture_url(@fixture)
    click_on "Destroy this fixture", match: :first

    assert_text "Fixture was successfully destroyed"
  end
end
