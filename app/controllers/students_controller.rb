class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find_by_id(params[:id])
  end

  def new

  end
 

  def create
    # @student = Student.create(first_name: params[:first_name], last_name: params[:last_name])
    # redirect_to student_path(@student)
    session[:form_params] = params.inspect
    redirect_to new_student_path
  end

  # helpers do
  #   def find_student
  #     @student = Student.find_by_id(params[:id])
  #   end
  # end

end
