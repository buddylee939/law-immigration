require "application_system_test_case"

class FormN400sTest < ApplicationSystemTestCase
  setup do
    @form_n400 = form_n400s(:one)
  end

  test "visiting the index" do
    visit form_n400s_url
    assert_selector "h1", text: "Form N400s"
  end

  test "creating a Form n400" do
    visit form_n400s_url
    click_on "New Form N400"

    fill_in "Citizen 3 years", with: @form_n400.citizen_3_years
    fill_in "Citizen 5 years", with: @form_n400.citizen_5_years
    fill_in "Citizen spouse", with: @form_n400.citizen_spouse
    fill_in "Military service", with: @form_n400.military_service
    fill_in "Nine digit number", with: @form_n400.nine_digit_number
    fill_in "Other", with: @form_n400.other
    fill_in "User", with: @form_n400.user_id
    click_on "Create Form n400"

    assert_text "Form n400 was successfully created"
    click_on "Back"
  end

  test "updating a Form n400" do
    visit form_n400s_url
    click_on "Edit", match: :first

    fill_in "Citizen 3 years", with: @form_n400.citizen_3_years
    fill_in "Citizen 5 years", with: @form_n400.citizen_5_years
    fill_in "Citizen spouse", with: @form_n400.citizen_spouse
    fill_in "Military service", with: @form_n400.military_service
    fill_in "Nine digit number", with: @form_n400.nine_digit_number
    fill_in "Other", with: @form_n400.other
    fill_in "User", with: @form_n400.user_id
    click_on "Update Form n400"

    assert_text "Form n400 was successfully updated"
    click_on "Back"
  end

  test "destroying a Form n400" do
    visit form_n400s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Form n400 was successfully destroyed"
  end
end
