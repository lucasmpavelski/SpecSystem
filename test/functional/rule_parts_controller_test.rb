require 'test_helper'

class RulePartsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => RulePart.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    RulePart.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    RulePart.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to rule_part_url(assigns(:rule_part))
  end

  def test_edit
    get :edit, :id => RulePart.first
    assert_template 'edit'
  end

  def test_update_invalid
    RulePart.any_instance.stubs(:valid?).returns(false)
    put :update, :id => RulePart.first
    assert_template 'edit'
  end

  def test_update_valid
    RulePart.any_instance.stubs(:valid?).returns(true)
    put :update, :id => RulePart.first
    assert_redirected_to rule_part_url(assigns(:rule_part))
  end

  def test_destroy
    rule_part = RulePart.first
    delete :destroy, :id => rule_part
    assert_redirected_to rule_parts_url
    assert !RulePart.exists?(rule_part.id)
  end
end
