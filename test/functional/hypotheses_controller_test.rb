require 'test_helper'

class HypothesesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Hypothesis.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Hypothesis.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Hypothesis.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to hypothesis_url(assigns(:hypothesis))
  end

  def test_edit
    get :edit, :id => Hypothesis.first
    assert_template 'edit'
  end

  def test_update_invalid
    Hypothesis.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Hypothesis.first
    assert_template 'edit'
  end

  def test_update_valid
    Hypothesis.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Hypothesis.first
    assert_redirected_to hypothesis_url(assigns(:hypothesis))
  end

  def test_destroy
    hypothesis = Hypothesis.first
    delete :destroy, :id => hypothesis
    assert_redirected_to hypotheses_url
    assert !Hypothesis.exists?(hypothesis.id)
  end
end
