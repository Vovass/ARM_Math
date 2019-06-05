require 'test_helper'

class TheoremsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @theorem = theorems(:one)
  end

  test "should get index" do
    get theorems_url
    assert_response :success
  end

  test "should get new" do
    get new_theorem_url
    assert_response :success
  end

  test "should create theorem" do
    assert_difference('Theorem.count') do
      post theorems_url, params: { theorem: { description: @theorem.description, title: @theorem.title } }
    end

    assert_redirected_to theorem_url(Theorem.last)
  end

  test "should show theorem" do
    get theorem_url(@theorem)
    assert_response :success
  end

  test "should get edit" do
    get edit_theorem_url(@theorem)
    assert_response :success
  end

  test "should update theorem" do
    patch theorem_url(@theorem), params: { theorem: { description: @theorem.description, title: @theorem.title } }
    assert_redirected_to theorem_url(@theorem)
  end

  test "should destroy theorem" do
    assert_difference('Theorem.count', -1) do
      delete theorem_url(@theorem)
    end

    assert_redirected_to theorems_url
  end
end
