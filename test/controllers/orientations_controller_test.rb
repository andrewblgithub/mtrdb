require 'test_helper'

class OrientationsControllerTest < ActionController::TestCase
  setup do
    @patient = patients(:one)
    @orientation = orientations(:one)
  end

  test "should get index" do
    get :index, params: { patient_id: @patient }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { patient_id: @patient }
    assert_response :success
  end

  test "should create orientation" do
    assert_difference('Orientation.count') do
      post :create, params: { patient_id: @patient, orientation: @orientation.attributes }
    end

    assert_redirected_to patient_orientation_path(@patient, Orientation.last)
  end

  test "should show orientation" do
    get :show, params: { patient_id: @patient, id: @orientation }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { patient_id: @patient, id: @orientation }
    assert_response :success
  end

  test "should update orientation" do
    put :update, params: { patient_id: @patient, id: @orientation, orientation: @orientation.attributes }
    assert_redirected_to patient_orientation_path(@patient, Orientation.last)
  end

  test "should destroy orientation" do
    assert_difference('Orientation.count', -1) do
      delete :destroy, params: { patient_id: @patient, id: @orientation }
    end

    assert_redirected_to patient_orientations_path(@patient)
  end
end
