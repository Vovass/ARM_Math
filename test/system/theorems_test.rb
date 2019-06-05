require "application_system_test_case"

class TheoremsTest < ApplicationSystemTestCase
  setup do
    @theorem = theorems(:one)
  end

  test "visiting the index" do
    visit theorems_url
    assert_selector "h1", text: "Theorems"
  end

  test "creating a Theorem" do
    visit theorems_url
    click_on "New Theorem"

    fill_in "Description", with: @theorem.description
    fill_in "Title", with: @theorem.title
    click_on "Create Theorem"

    assert_text "Theorem was successfully created"
    click_on "Back"
  end

  test "updating a Theorem" do
    visit theorems_url
    click_on "Edit", match: :first

    fill_in "Description", with: @theorem.description
    fill_in "Title", with: @theorem.title
    click_on "Update Theorem"

    assert_text "Theorem was successfully updated"
    click_on "Back"
  end

  test "destroying a Theorem" do
    visit theorems_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Theorem was successfully destroyed"
  end
end
