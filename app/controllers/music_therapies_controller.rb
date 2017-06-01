class MusicTherapiesController < ApplicationController
  before_action :set_music_therapies
  before_action :set_music_therapy, only: [:show, :edit, :update, :destroy]

  # GET patients/1/music_therapies
  def index
    @music_therapies = @patient.music_therapies
  end

  # GET patients/1/music_therapies/1
  def show
  end

  # GET patients/1/music_therapies/new
  def new
    @music_therapy = @patient.music_therapies.build
  end

  # GET patients/1/music_therapies/1/edit
  def edit
  end

  # POST patients/1/music_therapies
  def create
    @music_therapy = @patient.music_therapies.build(music_therapy_params)

    if @music_therapy.save
      redirect_to([@music_therapy.patient, @music_therapy], notice: 'Music therapy was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT patients/1/music_therapies/1
  def update
    if @music_therapy.update_attributes(music_therapy_params)
      redirect_to([@music_therapy.patient, @music_therapy], notice: 'Music therapy was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE patients/1/music_therapies/1
  def destroy
    @music_therapy.destroy

    redirect_to patient_music_therapies_url(@patient)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_music_therapies
      @patient = Patient.find(params[:patient_id])
    end

    def set_music_therapy
      @music_therapy = @patient.music_therapies.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def music_therapy_params
      params.require(:music_therapy).permit(:day, :passive_or_active, :length_of_visit)
    end
end
