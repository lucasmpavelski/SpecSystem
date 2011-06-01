require 'test_helper'

class BlackBoardsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => BlackBoard.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    BlackBoard.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    BlackBoard.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to black_board_url(assigns(:black_board))
  end

  def test_edit
    get :edit, :id => BlackBoard.first
    assert_template 'edit'
  end

  def test_update_invalid
    BlackBoard.any_instance.stubs(:valid?).returns(false)
    put :update, :id => BlackBoard.first
    assert_template 'edit'
  end

  def test_update_valid
    BlackBoard.any_instance.stubs(:valid?).returns(true)
    put :update, :id => BlackBoard.first
    assert_redirected_to black_board_url(assigns(:black_board))
  end

  def test_destroy
    black_board = BlackBoard.first
    delete :destroy, :id => black_board
    assert_redirected_to black_boards_url
    assert !BlackBoard.exists?(black_board.id)
  end
end
