require 'test_helper'

class BetaSignUpsControllerTest < ActionController::TestCase
  setup do
    @beta_sign_up = beta_sign_ups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:beta_sign_ups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create beta_sign_up" do
    assert_difference('BetaSignUp.count') do
      post :create, beta_sign_up: { emailAddress: @beta_sign_up.emailAddress }
    end

    assert_redirected_to beta_sign_up_path(assigns(:beta_sign_up))
  end

  test "should show beta_sign_up" do
    get :show, id: @beta_sign_up
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @beta_sign_up
    assert_response :success
  end

  test "should update beta_sign_up" do
    put :update, id: @beta_sign_up, beta_sign_up: { emailAddress: @beta_sign_up.emailAddress }
    assert_redirected_to beta_sign_up_path(assigns(:beta_sign_up))
  end

  test "should destroy beta_sign_up" do
    assert_difference('BetaSignUp.count', -1) do
      delete :destroy, id: @beta_sign_up
    end

    assert_redirected_to beta_sign_ups_path
  end
end
