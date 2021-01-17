class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
  end

  def activate
    @student = Student.find(params[:id]) #finds the specific student via id 
    @student.active = !@student.active  #toggles to the oppostie of what the student currnetly is for active 
    @student.save #saves the new changed active status in the DB so it persists 
    redirect_to student_path(@student) #redirects to the speficic student page 
  end


  private

    def set_student
      @student = Student.find(params[:id])
    end
end