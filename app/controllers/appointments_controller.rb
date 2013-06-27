class AppointmentsController < ApplicationController
    def index
      @appointments = Appointment.all
    end

    def new
      @appointment = Appointment.new
      @doctors = Doctor.find(:all)
      @patients = Patient.find(:all)
    end

    def create
      @appointment = Appointment.create(params[:appointment])
      if @appointment.save
        redirect_to appointments_path
      else
        render :new
      end
    end

    def edit
      @appointment = Appointment.find(params[:id])
    end

    def update
      @appointment = Appointment.find(params[:id])
      if @appointment.update_attribues(params[:appointment])
        redirect_to appointments_path
      else
        render :edit
      end
    end

    def destroy
      @appointment = Appointment.find(params[:id])
      @appointment.delete
      redirect_to appointments_path
    end

    def show
      @appointment = Appointment.find(params[:id])
    end
  end