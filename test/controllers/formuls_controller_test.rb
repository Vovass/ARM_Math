require 'test_helper'

class FormulsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @formul = formuls(:one)
  end

  test "should get index" do
    get formuls_url
    assert_response :success
  end

  test "should get new" do
    get new_formul_url
    assert_response :success
  end

  test "should create formul" do
    assert_difference('Formul.count') do
      post formuls_url, params: { formul: { description: @formul.description, title: @formul.title } }
    end

    assert_redirected_to formul_url(Formul.last)
  end

  test "should show formul" do
    get formul_url(@formul)
    assert_response :success
  end

  test "should get edit" do
    get edit_formul_url(@formul)
    assert_response :success
  end

  test "should update formul" do
    patch formul_url(@formul), params: { formul: { description: @formul.description, title: @formul.title } }
    assert_redirected_to formul_url(@formul)
  end

  test "should destroy formul" do
    assert_difference('Formul.count', -1) do
      delete formul_url(@formul)
    end

    assert_redirected_to formuls_url
  end
end
