class StudentsController < ApplicationController

  def index
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to student_path(@student)
    else
      redirect_to new_student_path
    end
  end

  def show
  end

  private

  def student_params
    params.require(:student).permit
  end

end