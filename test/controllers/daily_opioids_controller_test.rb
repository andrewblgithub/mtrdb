require 'test_helper'

class DailyOpioidsControllerTest < ActionController::TestCase
  setup do
    @patient = patients(:one)
    @daily_opioid = daily_opioids(:one)
  end

  test "should get index" do
    get :index, params: { patient_id: @patient }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { patient_id: @patient }
    assert_response :success
  end

  test "should create daily_opioid" do
    assert_difference('DailyOpioid.count') do
      post :create, params: { patient_id: @patient, daily_opioid: @daily_opioid.attributes }
    end

    assert_redirected_to patient_daily_opioid_path(@patient, DailyOpioid.last)
  end

  test "should show daily_opioid" do
    get :show, params: { patient_id: @patient, id: @daily_opioid }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { patient_id: @patient, id: @daily_opioid }
    assert_response :success
  end

  test "should update daily_opioid" do
    put :update, params: { patient_id: @patient, id: @daily_opioid, daily_opioid: @daily_opioid.attributes }
    assert_redirected_to patient_daily_opioid_path(@patient, DailyOpioid.last)
  end

  test "should destroy daily_opioid" do
    assert_difference('DailyOpioid.count', -1) do
      delete :destroy, params: { patient_id: @patient, id: @daily_opioid }
    end

    assert_redirected_to patient_daily_opioids_path(@patient)
  end
end
