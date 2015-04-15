class DoctorsController < ApplicationController

    before_action :set_doctor, only: [:show, :edit, :update, :destroy]

    # GET /appointments
    # GET /appointments.json
    def index
      @doctors = Doctor.all
    end

    # GET /appointments/1
    # GET /appointments/1.json
    def show
    end

    # GET /appointments/new
    def new
      @doctor = Doctor.new
    end

    # GET /appointments/1/edit
    def edit
    end

    # POST /appointments
    # POST /appointments.json
    def create
      @doctor = Doctor.new(appointment_params)

      respond_to do |format|
        if @doctor.save
          format.html { redirect_to @doctor, notice: 'Doctor was successfully created.' }
          format.json { render :show, status: :created, location: @doctor }
        else
          format.html { render :new }
          format.json { render json: @doctor.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /appointments/1
    # PATCH/PUT /appointments/1.json
    def update
      respond_to do |format|
        if @doctor.update(appointment_params)
          format.html { redirect_to @doctor, notice: 'Doctor was successfully updated.' }
          format.json { render :show, status: :ok, location: @doctor }
        else
          format.html { render :edit }
          format.json { render json: @doctor.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /appointments/1
    # DELETE /appointments/1.json
    def destroy
      @doctor.destroy
      respond_to do |format|
        format.html { redirect_to appointments_url, notice: 'Doctor was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_doctor
      @doctor = Doctor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def appointment_params
      params.require(:doctor).permit(:name, :address, :city, :state, :zip, :school, :years)
    end
  end



