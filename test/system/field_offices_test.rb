require "application_system_test_case"

class FieldOfficesTest < ApplicationSystemTestCase
  setup do
    @field_office = field_offices(:one)
  end

  test "visiting the index" do
    visit field_offices_url
    assert_selector "h1", text: "Field Offices"
  end

  test "creating a Field office" do
    visit field_offices_url
    click_on "New Field Office"

    fill_in "Form n400", with: @field_office.form_n400_id
    fill_in "Name", with: @field_office.name
    fill_in "State", with: @field_office.state
    click_on "Create Field office"

    assert_text "Field office was successfully created"
    click_on "Back"
  end

  test "updating a Field office" do
    visit field_offices_url
    click_on "Edit", match: :first

    fill_in "Form n400", with: @field_office.form_n400_id
    fill_in "Name", with: @field_office.name
    fill_in "State", with: @field_office.state
    click_on "Update Field office"

    assert_text "Field office was successfully updated"
    click_on "Back"
  end

  test "destroying a Field office" do
    visit field_offices_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Field office was successfully destroyed"
  end
end
