class LabResultsController < ApplicationController
  before_action :set_lab_results
  before_action :set_lab_result, only: [:show, :edit, :update, :destroy]

  # GET patients/1/lab_results
  def index
    @lab_results = @patient.lab_results
  end

  # GET patients/1/lab_results/1
  def show
  end

  # GET patients/1/lab_results/new
  def new
    @lab_result = @patient.lab_results.build
  end

  # GET patients/1/lab_results/1/edit
  def edit
  end

  # POST patients/1/lab_results
  def create
    @lab_result = @patient.lab_results.build(lab_result_params)

    if @lab_result.save
      redirect_to([@lab_result.patient, @lab_result], notice: 'Lab result was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT patients/1/lab_results/1
  def update
    if @lab_result.update_attributes(lab_result_params)
      redirect_to([@lab_result.patient, @lab_result], notice: 'Lab result was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE patients/1/lab_results/1
  def destroy
    @lab_result.destroy

    redirect_to patient_lab_results_url(@patient)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lab_results
      @patient = Patient.find(params[:patient_id])
    end

    def set_lab_result
      @lab_result = @patient.lab_results.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def lab_result_params
      params.require(:lab_result).permit(:date, :creatinine, :bilirubin, :albumin, :hematocrit, :glucose)
    end
end
