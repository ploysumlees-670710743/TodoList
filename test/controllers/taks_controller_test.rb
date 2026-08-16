require "test_helper"

class TaksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tak = taks(:one)
  end

  test "should get index" do
    get taks_url
    assert_response :success
  end

  test "should get new" do
    get new_tak_url
    assert_response :success
  end

  test "should create tak" do
    assert_difference("Tak.count") do
      post taks_url, params: { tak: { completed: @tak.completed, title: @tak.title } }
    end

    assert_redirected_to tak_url(Tak.last)
  end

  test "should show tak" do
    get tak_url(@tak)
    assert_response :success
  end

  test "should get edit" do
    get edit_tak_url(@tak)
    assert_response :success
  end

  test "should update tak" do
    patch tak_url(@tak), params: { tak: { completed: @tak.completed, title: @tak.title } }
    assert_redirected_to tak_url(@tak)
  end

  test "should destroy tak" do
    assert_difference("Tak.count", -1) do
      delete tak_url(@tak)
    end

    assert_redirected_to taks_url
  end
end
