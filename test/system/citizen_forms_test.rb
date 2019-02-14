require "application_system_test_case"

class CitizenFormsTest < ApplicationSystemTestCase
  setup do
    @citizen_form = citizen_forms(:one)
  end

  test "visiting the index" do
    visit citizen_forms_url
    assert_selector "h1", text: "Citizen Forms"
  end

  test "creating a Citizen form" do
    visit citizen_forms_url
    click_on "New Citizen Form"

    fill_in "Bio", with: @citizen_form.bio
    fill_in "Date of birth", with: @citizen_form.date_of_birth
    fill_in "Github", with: @citizen_form.github
    fill_in "Name", with: @citizen_form.name
    fill_in "Twitter", with: @citizen_form.twitter
    fill_in "User", with: @citizen_form.user_id
    fill_in "Website", with: @citizen_form.website
    click_on "Create Citizen form"

    assert_text "Citizen form was successfully created"
    click_on "Back"
  end

  test "updating a Citizen form" do
    visit citizen_forms_url
    click_on "Edit", match: :first

    fill_in "Bio", with: @citizen_form.bio
    fill_in "Date of birth", with: @citizen_form.date_of_birth
    fill_in "Github", with: @citizen_form.github
    fill_in "Name", with: @citizen_form.name
    fill_in "Twitter", with: @citizen_form.twitter
    fill_in "User", with: @citizen_form.user_id
    fill_in "Website", with: @citizen_form.website
    click_on "Update Citizen form"

    assert_text "Citizen form was successfully updated"
    click_on "Back"
  end

  test "destroying a Citizen form" do
    visit citizen_forms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Citizen form was successfully destroyed"
  end
end
