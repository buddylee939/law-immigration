require 'test_helper'

class FieldOfficesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @field_office = field_offices(:one)
  end

  test "should get index" do
    get field_offices_url
    assert_response :success
  end

  test "should get new" do
    get new_field_office_url
    assert_response :success
  end

  test "should create field_office" do
    assert_difference('FieldOffice.count') do
      post field_offices_url, params: { field_office: { form_n400_id: @field_office.form_n400_id, name: @field_office.name, state: @field_office.state } }
    end

    assert_redirected_to field_office_url(FieldOffice.last)
  end

  test "should show field_office" do
    get field_office_url(@field_office)
    assert_response :success
  end

  test "should get edit" do
    get edit_field_office_url(@field_office)
    assert_response :success
  end

  test "should update field_office" do
    patch field_office_url(@field_office), params: { field_office: { form_n400_id: @field_office.form_n400_id, name: @field_office.name, state: @field_office.state } }
    assert_redirected_to field_office_url(@field_office)
  end

  test "should destroy field_office" do
    assert_difference('FieldOffice.count', -1) do
      delete field_office_url(@field_office)
    end

    assert_redirected_to field_offices_url
  end
end
