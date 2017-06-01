class PainScoresController < ApplicationController
  before_action :set_pain_scores
  before_action :set_pain_score, only: [:show, :edit, :update, :destroy]

  # GET patients/1/pain_scores
  def index
    @pain_scores = @patient.pain_scores
  end

  # GET patients/1/pain_scores/1
  def show
  end

  # GET patients/1/pain_scores/new
  def new
    @pain_score = @patient.pain_scores.build
  end

  # GET patients/1/pain_scores/1/edit
  def edit
  end

  # POST patients/1/pain_scores
  def create
    @pain_score = @patient.pain_scores.build(pain_score_params)

    if @pain_score.save
      redirect_to([@pain_score.patient, @pain_score], notice: 'Pain score was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT patients/1/pain_scores/1
  def update
    if @pain_score.update_attributes(pain_score_params)
      redirect_to([@pain_score.patient, @pain_score], notice: 'Pain score was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE patients/1/pain_scores/1
  def destroy
    @pain_score.destroy

    redirect_to patient_pain_scores_url(@patient)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pain_scores
      @patient = Patient.find(params[:patient_id])
    end

    def set_pain_score
      @pain_score = @patient.pain_scores.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def pain_score_params
      params.require(:pain_score).permit(:day, :pain_score_1, :pain_score_2, :pain_score_3)
    end
end
