require 'test_helper'

class ThemeSectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @theme_section = theme_sections(:one)
  end

  test "should get index" do
    get theme_sections_url
    assert_response :success
  end

  test "should get new" do
    get new_theme_section_url
    assert_response :success
  end

  test "should create theme_section" do
    assert_difference('ThemeSection.count') do
      post theme_sections_url, params: { theme_section: { info: @theme_section.info, title: @theme_section.title } }
    end

    assert_redirected_to theme_section_url(ThemeSection.last)
  end

  test "should show theme_section" do
    get theme_section_url(@theme_section)
    assert_response :success
  end

  test "should get edit" do
    get edit_theme_section_url(@theme_section)
    assert_response :success
  end

  test "should update theme_section" do
    patch theme_section_url(@theme_section), params: { theme_section: { info: @theme_section.info, title: @theme_section.title } }
    assert_redirected_to theme_section_url(@theme_section)
  end

  test "should destroy theme_section" do
    assert_difference('ThemeSection.count', -1) do
      delete theme_section_url(@theme_section)
    end

    assert_redirected_to theme_sections_url
  end
end
