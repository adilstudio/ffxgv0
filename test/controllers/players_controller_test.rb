require "test_helper"

class PlayersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @player = players(:one)
  end

  test "should get index" do
    get players_url
    assert_response :success
  end

  test "should get new" do
    get new_player_url
    assert_response :success
  end

  test "should create player" do
    assert_difference("Player.count") do
      post players_url, params: { player: { commun_name: @player.commun_name, first_name: @player.first_name, last_name: @player.last_name, player_api_id: @player.player_api_id, positioon: @player.positioon, team_api_id: @player.team_api_id } }
    end

    assert_redirected_to player_url(Player.last)
  end

  test "should show player" do
    get player_url(@player)
    assert_response :success
  end

  test "should get edit" do
    get edit_player_url(@player)
    assert_response :success
  end

  test "should update player" do
    patch player_url(@player), params: { player: { commun_name: @player.commun_name, first_name: @player.first_name, last_name: @player.last_name, player_api_id: @player.player_api_id, positioon: @player.positioon, team_api_id: @player.team_api_id } }
    assert_redirected_to player_url(@player)
  end

  test "should destroy player" do
    assert_difference("Player.count", -1) do
      delete player_url(@player)
    end

    assert_redirected_to players_url
  end
end
