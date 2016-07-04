require 'test_helper'

class ArtsfestDetailsControllerTest < ActionController::TestCase
  setup do
    @artsfest_detail = artsfest_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:artsfest_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create artsfest_detail" do
    assert_difference('ArtsfestDetail.count') do
      post :create, artsfest_detail: { house_: @artsfest_detail.house_, name_: @artsfest_detail.name_, prize_: @artsfest_detail.prize_, roll_no_: @artsfest_detail.roll_no_ }
    end

    assert_redirected_to artsfest_detail_path(assigns(:artsfest_detail))
  end

  test "should show artsfest_detail" do
    get :show, id: @artsfest_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @artsfest_detail
    assert_response :success
  end

  test "should update artsfest_detail" do
    patch :update, id: @artsfest_detail, artsfest_detail: { house_: @artsfest_detail.house_, name_: @artsfest_detail.name_, prize_: @artsfest_detail.prize_, roll_no_: @artsfest_detail.roll_no_ }
    assert_redirected_to artsfest_detail_path(assigns(:artsfest_detail))
  end

  test "should destroy artsfest_detail" do
    assert_difference('ArtsfestDetail.count', -1) do
      delete :destroy, id: @artsfest_detail
    end

    assert_redirected_to artsfest_details_path
  end
end
