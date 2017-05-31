require 'test_helper'

class LabResultsControllerTest < ActionController::TestCase
  setup do
    @patient = patients(:one)
    @lab_result = lab_results(:one)
  end

  test "should get index" do
    get :index, params: { patient_id: @patient }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { patient_id: @patient }
    assert_response :success
  end

  test "should create lab_result" do
    assert_difference('LabResult.count') do
      post :create, params: { patient_id: @patient, lab_result: @lab_result.attributes }
    end

    assert_redirected_to patient_lab_result_path(@patient, LabResult.last)
  end

  test "should show lab_result" do
    get :show, params: { patient_id: @patient, id: @lab_result }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { patient_id: @patient, id: @lab_result }
    assert_response :success
  end

  test "should update lab_result" do
    put :update, params: { patient_id: @patient, id: @lab_result, lab_result: @lab_result.attributes }
    assert_redirected_to patient_lab_result_path(@patient, LabResult.last)
  end

  test "should destroy lab_result" do
    assert_difference('LabResult.count', -1) do
      delete :destroy, params: { patient_id: @patient, id: @lab_result }
    end

    assert_redirected_to patient_lab_results_path(@patient)
  end
end
