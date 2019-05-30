require "application_system_test_case"

class ThemeSectionsTest < ApplicationSystemTestCase
  setup do
    @theme_section = theme_sections(:one)
  end

  test "visiting the index" do
    visit theme_sections_url
    assert_selector "h1", text: "Theme Sections"
  end

  test "creating a Theme section" do
    visit theme_sections_url
    click_on "New Theme Section"

    fill_in "Info", with: @theme_section.info
    fill_in "Title", with: @theme_section.title
    click_on "Create Theme section"

    assert_text "Theme section was successfully created"
    click_on "Back"
  end

  test "updating a Theme section" do
    visit theme_sections_url
    click_on "Edit", match: :first

    fill_in "Info", with: @theme_section.info
    fill_in "Title", with: @theme_section.title
    click_on "Update Theme section"

    assert_text "Theme section was successfully updated"
    click_on "Back"
  end

  test "destroying a Theme section" do
    visit theme_sections_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Theme section was successfully destroyed"
  end
end
