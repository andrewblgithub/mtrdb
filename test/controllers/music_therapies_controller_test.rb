require 'test_helper'

class MusicTherapiesControllerTest < ActionController::TestCase
  setup do
    @patient = patients(:one)
    @music_therapy = music_therapies(:one)
  end

  test "should get index" do
    get :index, params: { patient_id: @patient }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { patient_id: @patient }
    assert_response :success
  end

  test "should create music_therapy" do
    assert_difference('MusicTherapy.count') do
      post :create, params: { patient_id: @patient, music_therapy: @music_therapy.attributes }
    end

    assert_redirected_to patient_music_therapy_path(@patient, MusicTherapy.last)
  end

  test "should show music_therapy" do
    get :show, params: { patient_id: @patient, id: @music_therapy }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { patient_id: @patient, id: @music_therapy }
    assert_response :success
  end

  test "should update music_therapy" do
    put :update, params: { patient_id: @patient, id: @music_therapy, music_therapy: @music_therapy.attributes }
    assert_redirected_to patient_music_therapy_path(@patient, MusicTherapy.last)
  end

  test "should destroy music_therapy" do
    assert_difference('MusicTherapy.count', -1) do
      delete :destroy, params: { patient_id: @patient, id: @music_therapy }
    end

    assert_redirected_to patient_music_therapies_path(@patient)
  end
end
