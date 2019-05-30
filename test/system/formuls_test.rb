require "application_system_test_case"

class FormulsTest < ApplicationSystemTestCase
  setup do
    @formul = formuls(:one)
  end

  test "visiting the index" do
    visit formuls_url
    assert_selector "h1", text: "Formuls"
  end

  test "creating a Formul" do
    visit formuls_url
    click_on "New Formul"

    fill_in "Description", with: @formul.description
    fill_in "Title", with: @formul.title
    click_on "Create Formul"

    assert_text "Formul was successfully created"
    click_on "Back"
  end

  test "updating a Formul" do
    visit formuls_url
    click_on "Edit", match: :first

    fill_in "Description", with: @formul.description
    fill_in "Title", with: @formul.title
    click_on "Update Formul"

    assert_text "Formul was successfully updated"
    click_on "Back"
  end

  test "destroying a Formul" do
    visit formuls_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Formul was successfully destroyed"
  end
end
