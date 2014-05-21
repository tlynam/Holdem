require 'test_helper'

class GamesControllerTest < ActionController::TestCase
  setup do
    @game = games(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:games)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create game" do
    assert_difference('Game.count') do
      post :create, game: { action: @game.action, big_blind: @game.big_blind, board: @game.board, button: @game.button, current_bet: @game.current_bet, deck: @game.deck, last_to_act: @game.last_to_act, name: @game.name, pot: @game.pot, small_blind: @game.small_blind }
    end

    assert_redirected_to game_path(assigns(:game))
  end

  test "should show game" do
    get :show, id: @game
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @game
    assert_response :success
  end

  test "should update game" do
    patch :update, id: @game, game: { action: @game.action, big_blind: @game.big_blind, board: @game.board, button: @game.button, current_bet: @game.current_bet, deck: @game.deck, last_to_act: @game.last_to_act, name: @game.name, pot: @game.pot, small_blind: @game.small_blind }
    assert_redirected_to game_path(assigns(:game))
  end

  test "should destroy game" do
    assert_difference('Game.count', -1) do
      delete :destroy, id: @game
    end

    assert_redirected_to games_path
  end
end
