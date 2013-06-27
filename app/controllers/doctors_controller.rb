class DoctorsController < ApplicationController
  def index
    @doctors = Doctor.all
  end

  def new
    @doctor = Doctor.new
  end

  def create
    @doctor = Doctor.create(params[:doctor])
    if @doctor.save
      redirect_to doctors_path
    else
      render :new
    end
  end

  def edit
    @doctor = Doctor.find(params[:id])
  end

  def update
    @doctor = Doctor.find(params[:id])
    if @doctor.update_attribues(params[:doctor])
      redirect_to doctors_path
    else
      render :edit
    end
  end

  def destroy
    @doctor = Article.find(params[:id])
    @doctor.delete
    redirect_to articles_path
  end

  def show
    @doctor = Doctor.find(params[:id])
  end
end
