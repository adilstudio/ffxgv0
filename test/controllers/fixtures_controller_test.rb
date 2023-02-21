require "test_helper"

class FixturesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fixture = fixtures(:one)
  end

  test "should get index" do
    get fixtures_url
    assert_response :success
  end

  test "should get new" do
    get new_fixture_url
    assert_response :success
  end

  test "should create fixture" do
    assert_difference("Fixture.count") do
      post fixtures_url, params: { fixture: { date: @fixture.date, fixture_api_id: @fixture.fixture_api_id, league_api_id: @fixture.league_api_id, periods_first: @fixture.periods_first, periods_second: @fixture.periods_second, referee: @fixture.referee, status_elapsed: @fixture.status_elapsed, status_long: @fixture.status_long, status_short: @fixture.status_short, teams_home_api_id: @fixture.teams_home_api_id, timestamp: @fixture.timestamp, timezone: @fixture.timezone, venue_city: @fixture.venue_city, venue_id: @fixture.venue_id, venue_name: @fixture.venue_name } }
    end

    assert_redirected_to fixture_url(Fixture.last)
  end

  test "should show fixture" do
    get fixture_url(@fixture)
    assert_response :success
  end

  test "should get edit" do
    get edit_fixture_url(@fixture)
    assert_response :success
  end

  test "should update fixture" do
    patch fixture_url(@fixture), params: { fixture: { date: @fixture.date, fixture_api_id: @fixture.fixture_api_id, league_api_id: @fixture.league_api_id, periods_first: @fixture.periods_first, periods_second: @fixture.periods_second, referee: @fixture.referee, status_elapsed: @fixture.status_elapsed, status_long: @fixture.status_long, status_short: @fixture.status_short, teams_home_api_id: @fixture.teams_home_api_id, timestamp: @fixture.timestamp, timezone: @fixture.timezone, venue_city: @fixture.venue_city, venue_id: @fixture.venue_id, venue_name: @fixture.venue_name } }
    assert_redirected_to fixture_url(@fixture)
  end

  test "should destroy fixture" do
    assert_difference("Fixture.count", -1) do
      delete fixture_url(@fixture)
    end

    assert_redirected_to fixtures_url
  end
end
