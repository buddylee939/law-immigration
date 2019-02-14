require 'test_helper'

class FormN400sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @form_n400 = form_n400s(:one)
  end

  test "should get index" do
    get form_n400s_url
    assert_response :success
  end

  test "should get new" do
    get new_form_n400_url
    assert_response :success
  end

  test "should create form_n400" do
    assert_difference('FormN400.count') do
      post form_n400s_url, params: { form_n400: { citizen_3_years: @form_n400.citizen_3_years, citizen_5_years: @form_n400.citizen_5_years, citizen_spouse: @form_n400.citizen_spouse, military_service: @form_n400.military_service, nine_digit_number: @form_n400.nine_digit_number, other: @form_n400.other, user_id: @form_n400.user_id } }
    end

    assert_redirected_to form_n400_url(FormN400.last)
  end

  test "should show form_n400" do
    get form_n400_url(@form_n400)
    assert_response :success
  end

  test "should get edit" do
    get edit_form_n400_url(@form_n400)
    assert_response :success
  end

  test "should update form_n400" do
    patch form_n400_url(@form_n400), params: { form_n400: { citizen_3_years: @form_n400.citizen_3_years, citizen_5_years: @form_n400.citizen_5_years, citizen_spouse: @form_n400.citizen_spouse, military_service: @form_n400.military_service, nine_digit_number: @form_n400.nine_digit_number, other: @form_n400.other, user_id: @form_n400.user_id } }
    assert_redirected_to form_n400_url(@form_n400)
  end

  test "should destroy form_n400" do
    assert_difference('FormN400.count', -1) do
      delete form_n400_url(@form_n400)
    end

    assert_redirected_to form_n400s_url
  end
end
