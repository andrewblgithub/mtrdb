class OrientationsController < ApplicationController
  before_action :set_orientations
  before_action :set_orientation, only: [:show, :edit, :update, :destroy]

  # GET patients/1/orientations
  def index
    @orientations = @patient.orientations
  end

  # GET patients/1/orientations/1
  def show
  end

  # GET patients/1/orientations/new
  def new
    @orientation = @patient.orientations.build
  end

  # GET patients/1/orientations/1/edit
  def edit
  end

  # POST patients/1/orientations
  def create
    @orientation = @patient.orientations.build(orientation_params)

    if @orientation.save
      redirect_to([@orientation.patient, @orientation], notice: 'Orientation was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT patients/1/orientations/1
  def update
    if @orientation.update_attributes(orientation_params)
      redirect_to([@orientation.patient, @orientation], notice: 'Orientation was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE patients/1/orientations/1
  def destroy
    @orientation.destroy

    redirect_to patient_orientations_url(@patient)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_orientations
      @patient = Patient.find(params[:patient_id])
    end

    def set_orientation
      @orientation = @patient.orientations.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def orientation_params
      params.require(:orientation).permit(:date, :orientation_1, :orientation_2, :orientation_3)
    end
end
