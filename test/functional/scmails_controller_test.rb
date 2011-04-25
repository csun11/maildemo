require 'test_helper'

class ScmailsControllerTest < ActionController::TestCase
  setup do
    @scmail = scmails(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scmails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scmail" do
    assert_difference('Scmail.count') do
      post :create, :scmail => @scmail.attributes
    end

    assert_redirected_to scmail_path(assigns(:scmail))
  end

  test "should show scmail" do
    get :show, :id => @scmail.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @scmail.to_param
    assert_response :success
  end

  test "should update scmail" do
    put :update, :id => @scmail.to_param, :scmail => @scmail.attributes
    assert_redirected_to scmail_path(assigns(:scmail))
  end

  test "should destroy scmail" do
    assert_difference('Scmail.count', -1) do
      delete :destroy, :id => @scmail.to_param
    end

    assert_redirected_to scmails_path
  end
end
