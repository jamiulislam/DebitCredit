require "application_system_test_case"

class TranjectionsTest < ApplicationSystemTestCase
  setup do
    @tranjection = tranjections(:one)
  end

  test "visiting the index" do
    visit tranjections_url
    assert_selector "h1", text: "Tranjections"
  end

  test "creating a Tranjection" do
    visit tranjections_url
    click_on "New Tranjection"

    fill_in "Amount", with: @tranjection.amount
    fill_in "Tranjectiontype", with: @tranjection.tranjectiontype
    fill_in "Uses", with: @tranjection.uses
    click_on "Create Tranjection"

    assert_text "Tranjection was successfully created"
    click_on "Back"
  end

  test "updating a Tranjection" do
    visit tranjections_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @tranjection.amount
    fill_in "Tranjectiontype", with: @tranjection.tranjectiontype
    fill_in "Uses", with: @tranjection.uses
    click_on "Update Tranjection"

    assert_text "Tranjection was successfully updated"
    click_on "Back"
  end

  test "destroying a Tranjection" do
    visit tranjections_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tranjection was successfully destroyed"
  end
end
