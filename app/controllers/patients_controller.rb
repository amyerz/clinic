class PatientsController < ApplicationController

    def index
      @patients = Patient.all
    end

    def new
      @patient = Patient.new
    end

    def create
      @patient = Patient.create(params[:patient])
      if @patient.save
        redirect_to patients_path
      else
        render :new
      end
    end

    def edit
      @patient = Patient.find(params[:id])
    end

    def update
      @patient = Patient.find(params[:id])
      if @patient.update_attribues(params[:patient])
        redirect_to patients_path
      else
        render :edit
      end
    end

    def destroy
      @patient = Patient.find(params[:id])
      @patient.delete
      redirect_to patients_path
    end

    def show
      @patient = Patient.find(params[:id])
    end
  end