class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students
  end

  def by_id
    student = Student.find_by_id(params[:id])
    if student
      render json: student
    else
      render json: { error: "Student not found"}, status: :not_found
    end
  end
end
