require 'test_helper'

class PainScoresControllerTest < ActionController::TestCase
  setup do
    @patient = patients(:one)
    @pain_score = pain_scores(:one)
  end

  test "should get index" do
    get :index, params: { patient_id: @patient }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { patient_id: @patient }
    assert_response :success
  end

  test "should create pain_score" do
    assert_difference('PainScore.count') do
      post :create, params: { patient_id: @patient, pain_score: @pain_score.attributes }
    end

    assert_redirected_to patient_pain_score_path(@patient, PainScore.last)
  end

  test "should show pain_score" do
    get :show, params: { patient_id: @patient, id: @pain_score }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { patient_id: @patient, id: @pain_score }
    assert_response :success
  end

  test "should update pain_score" do
    put :update, params: { patient_id: @patient, id: @pain_score, pain_score: @pain_score.attributes }
    assert_redirected_to patient_pain_score_path(@patient, PainScore.last)
  end

  test "should destroy pain_score" do
    assert_difference('PainScore.count', -1) do
      delete :destroy, params: { patient_id: @patient, id: @pain_score }
    end

    assert_redirected_to patient_pain_scores_path(@patient)
  end
end
