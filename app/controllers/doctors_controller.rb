class DoctorsController < ApplicationController
  before_action :set_doctor, only: [:show, :edit, :update, :destroy]

  # GET /doctors
  # GET /doctors.json
  def index
    @doctors = Doctor.all
  end

  # GET /doctors/new
  def new
    @doctor = Doctor.new
  end

  # GET /doctors/1
  # GET /doctors/1.json
  def show
    #@doctors = Doctor.all
  end

  # GET /doctors/1/edit
  def edit
  end

  # POST /doctors
  # POST /doctors.json
  def create
    @doctor = Doctor.new(doctor_params)

    respond_to do |format|
      if
      Doctor.find_by_name(@doctor.name) == nil ||
          Doctor.find_by_phone(@doctor.phone) == nil ||
          Doctor.find_by_specialty(@doctor.specialty) == nil
      @doctor.save
        format.html { redirect_to @doctor, notice: 'Лікар успішно створенй.' }
        #format.json { render :show, status: :created, location: @doctor }
      else
        format.html { render :new }
        #format.json { render json: @doctor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /doctors/1
  # PATCH/PUT /doctors/1.json
  def update
    respond_to do |format|
      if @doctor.update(doctor_params)
        format.html { redirect_to @doctor, notice: 'Лікар успішно оновлений.' }
        #format.json { render :show, status: :ok, location: @doctor }
      else
        format.html { render :edit }
        #format.json { render json: @doctor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doctors/1
  # DELETE /doctors/1.json
  def destroy
    if
    #Doctor.find_by_doctor_id(@recevings.doctor_id) == nil

    @doctor.destroy
    end
    respond_to do |format|
      format.html { redirect_to doctors_url, notice: 'Doctor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doctor
      @doctor = Doctor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def doctor_params
      params.fetch(:doctor).permit(:name, :phone, :specialty)
    end
end
