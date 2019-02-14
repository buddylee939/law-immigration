require 'test_helper'

class CitizenFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @citizen_form = citizen_forms(:one)
  end

  test "should get index" do
    get citizen_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_citizen_form_url
    assert_response :success
  end

  test "should create citizen_form" do
    assert_difference('CitizenForm.count') do
      post citizen_forms_url, params: { citizen_form: { bio: @citizen_form.bio, date_of_birth: @citizen_form.date_of_birth, github: @citizen_form.github, name: @citizen_form.name, twitter: @citizen_form.twitter, user_id: @citizen_form.user_id, website: @citizen_form.website } }
    end

    assert_redirected_to citizen_form_url(CitizenForm.last)
  end

  test "should show citizen_form" do
    get citizen_form_url(@citizen_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_citizen_form_url(@citizen_form)
    assert_response :success
  end

  test "should update citizen_form" do
    patch citizen_form_url(@citizen_form), params: { citizen_form: { bio: @citizen_form.bio, date_of_birth: @citizen_form.date_of_birth, github: @citizen_form.github, name: @citizen_form.name, twitter: @citizen_form.twitter, user_id: @citizen_form.user_id, website: @citizen_form.website } }
    assert_redirected_to citizen_form_url(@citizen_form)
  end

  test "should destroy citizen_form" do
    assert_difference('CitizenForm.count', -1) do
      delete citizen_form_url(@citizen_form)
    end

    assert_redirected_to citizen_forms_url
  end
end
