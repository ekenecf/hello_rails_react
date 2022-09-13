require "test_helper"

class StaticsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @static = statics(:one)
  end

  test "should get index" do
    get statics_url
    assert_response :success
  end

  test "should get new" do
    get new_static_url
    assert_response :success
  end

  test "should create static" do
    assert_difference("Static.count") do
      post statics_url, params: { static: {  } }
    end

    assert_redirected_to static_url(Static.last)
  end

  test "should show static" do
    get static_url(@static)
    assert_response :success
  end

  test "should get edit" do
    get edit_static_url(@static)
    assert_response :success
  end

  test "should update static" do
    patch static_url(@static), params: { static: {  } }
    assert_redirected_to static_url(@static)
  end

  test "should destroy static" do
    assert_difference("Static.count", -1) do
      delete static_url(@static)
    end

    assert_redirected_to statics_url
  end
end
