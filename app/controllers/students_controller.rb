class StudentsController < ApplicationController
  def index
    @students = Student.all
    # render('index') : default
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    # Create a new student
    @student = Student.new(student_params)
    if @student.save
      redirect_to(students_path)
    else
      render('new')
    end
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    # Load data
    @student = Student.find(params[:id])
    # Update data
    if @student.update_attributes(student_params)
      redirect_to(student_path(@student))
    else
      redirect_to('edit')
    end
  end

  def delete
    @student = Student.find(params[:id])
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    redirect_to(students_path)
  end

  private
  def student_params
    params.require(:student).permit(:student_id, :name, :email)
  end
end
