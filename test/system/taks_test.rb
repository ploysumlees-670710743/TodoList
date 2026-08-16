require "application_system_test_case"

class TaksTest < ApplicationSystemTestCase
  setup do
    @tak = taks(:one)
  end

  test "visiting the index" do
    visit taks_url
    assert_selector "h1", text: "Taks"
  end

  test "should create tak" do
    visit taks_url
    click_on "New tak"

    check "Completed" if @tak.completed
    fill_in "Title", with: @tak.title
    click_on "Create Tak"

    assert_text "Tak was successfully created"
    click_on "Back"
  end

  test "should update Tak" do
    visit tak_url(@tak)
    click_on "Edit this tak", match: :first

    check "Completed" if @tak.completed
    fill_in "Title", with: @tak.title
    click_on "Update Tak"

    assert_text "Tak was successfully updated"
    click_on "Back"
  end

  test "should destroy Tak" do
    visit tak_url(@tak)
    click_on "Destroy this tak", match: :first

    assert_text "Tak was successfully destroyed"
  end
end
