require 'test_helper'

class ScientistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @scientist = scientists(:one)
  end

  test "should get index" do
    get scientists_url
    assert_response :success
  end

  test "should get new" do
    get new_scientist_url
    assert_response :success
  end

  test "should create scientist" do
    assert_difference('Scientist.count') do
      post scientists_url, params: { scientist: { title: @scientist.title } }
    end

    assert_redirected_to scientist_url(Scientist.last)
  end

  test "should show scientist" do
    get scientist_url(@scientist)
    assert_response :success
  end

  test "should get edit" do
    get edit_scientist_url(@scientist)
    assert_response :success
  end

  test "should update scientist" do
    patch scientist_url(@scientist), params: { scientist: { title: @scientist.title } }
    assert_redirected_to scientist_url(@scientist)
  end

  test "should destroy scientist" do
    assert_difference('Scientist.count', -1) do
      delete scientist_url(@scientist)
    end

    assert_redirected_to scientists_url
  end
end
