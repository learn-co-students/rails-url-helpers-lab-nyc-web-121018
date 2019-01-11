class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
  end

  def edit
    @student = Student.find(params[:id])
  end

  # def create
  #   Student.create(name: params[:student][:name], active: params[:student][:active])
  #   redirect_to_students_path
  # end
  #
  # def update
  #   Student.update()
  #   redirect_to_students_path
  # end

  def activate
    @student = Student.find(params[:id])
    @student.active = !@student.active
    @student.save
    redirect_to student_path(@student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
