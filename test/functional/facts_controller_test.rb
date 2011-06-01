require 'test_helper'

class FactsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Fact.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Fact.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Fact.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to fact_url(assigns(:fact))
  end

  def test_edit
    get :edit, :id => Fact.first
    assert_template 'edit'
  end

  def test_update_invalid
    Fact.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Fact.first
    assert_template 'edit'
  end

  def test_update_valid
    Fact.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Fact.first
    assert_redirected_to fact_url(assigns(:fact))
  end

  def test_destroy
    fact = Fact.first
    delete :destroy, :id => fact
    assert_redirected_to facts_url
    assert !Fact.exists?(fact.id)
  end
end
