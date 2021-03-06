require "application_system_test_case"

class WeightHistriesTest < ApplicationSystemTestCase
  setup do
    @weight_histry = weight_histries(:one)
  end

  test "visiting the index" do
    visit weight_histries_url
    assert_selector "h1", text: "Weight Histries"
  end

  test "creating a Weight histry" do
    visit weight_histries_url
    click_on "New Weight Histry"

    fill_in "Memo", with: @weight_histry.memo
    fill_in "User", with: @weight_histry.user_id
    fill_in "Weight", with: @weight_histry.weight
    click_on "Create Weight histry"

    assert_text "Weight histry was successfully created"
    click_on "Back"
  end

  test "updating a Weight histry" do
    visit weight_histries_url
    click_on "Edit", match: :first

    fill_in "Memo", with: @weight_histry.memo
    fill_in "User", with: @weight_histry.user_id
    fill_in "Weight", with: @weight_histry.weight
    click_on "Update Weight histry"

    assert_text "Weight histry was successfully updated"
    click_on "Back"
  end

  test "destroying a Weight histry" do
    visit weight_histries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Weight histry was successfully destroyed"
  end
end
