class DailyOpioidsController < ApplicationController
  before_action :set_daily_opioids
  before_action :set_daily_opioid, only: [:show, :edit, :update, :destroy]

  # GET patients/1/daily_opioids
  def index
    @daily_opioids = @patient.daily_opioids
  end

  # GET patients/1/daily_opioids/1
  def show
  end

  # GET patients/1/daily_opioids/new
  def new
    @daily_opioid = @patient.daily_opioids.build
  end

  # GET patients/1/daily_opioids/1/edit
  def edit
  end

  # POST patients/1/daily_opioids
  def create
    @daily_opioid = @patient.daily_opioids.build(daily_opioid_params)

    if @daily_opioid.save
      redirect_to([@daily_opioid.patient, @daily_opioid], notice: 'Daily opioid was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT patients/1/daily_opioids/1
  def update
    if @daily_opioid.update_attributes(daily_opioid_params)
      redirect_to([@daily_opioid.patient, @daily_opioid], notice: 'Daily opioid was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE patients/1/daily_opioids/1
  def destroy
    @daily_opioid.destroy

    redirect_to patient_daily_opioids_url(@patient)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daily_opioids
      @patient = Patient.find(params[:patient_id])
    end

    def set_daily_opioid
      @daily_opioid = @patient.daily_opioids.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def daily_opioid_params
      params.require(:daily_opioid).permit(:day, :type_of_opioid, :PRN, :dose)
    end
end
