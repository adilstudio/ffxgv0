require "test_helper"

class TeamEventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @team_event = team_events(:one)
  end

  test "should get index" do
    get team_events_url
    assert_response :success
  end

  test "should get new" do
    get new_team_event_url
    assert_response :success
  end

  test "should create team_event" do
    assert_difference("TeamEvent.count") do
      post team_events_url, params: { team_event: { assist_player_api_id: @team_event.assist_player_api_id, comments: @team_event.comments, detail: @team_event.detail, fixture_api_id: @team_event.fixture_api_id, player_api_id: @team_event.player_api_id, team_api_id: @team_event.team_api_id, time_elapsed: @team_event.time_elapsed, time_extra: @team_event.time_extra, type: @team_event.type } }
    end

    assert_redirected_to team_event_url(TeamEvent.last)
  end

  test "should show team_event" do
    get team_event_url(@team_event)
    assert_response :success
  end

  test "should get edit" do
    get edit_team_event_url(@team_event)
    assert_response :success
  end

  test "should update team_event" do
    patch team_event_url(@team_event), params: { team_event: { assist_player_api_id: @team_event.assist_player_api_id, comments: @team_event.comments, detail: @team_event.detail, fixture_api_id: @team_event.fixture_api_id, player_api_id: @team_event.player_api_id, team_api_id: @team_event.team_api_id, time_elapsed: @team_event.time_elapsed, time_extra: @team_event.time_extra, type: @team_event.type } }
    assert_redirected_to team_event_url(@team_event)
  end

  test "should destroy team_event" do
    assert_difference("TeamEvent.count", -1) do
      delete team_event_url(@team_event)
    end

    assert_redirected_to team_events_url
  end
end
