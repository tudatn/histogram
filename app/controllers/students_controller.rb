class StudentsController < ApplicationController

  layout 'others'

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
      flash[:notice] = "Created succesfully"
      redirect_to(students_path)
    else
      flash[:notice] = "Invalid input"
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
      flash[:notice] = "Updated succesfully"
      redirect_to(student_path(@student))
    else
      flash[:notice] = "Invalid input"
      redirect_to('edit')
    end
  end

  def delete
    @student = Student.find(params[:id])
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    flash[:notice] = "Deleted succesfully"
    redirect_to(students_path)
  end

  private
  def student_params
    params.require(:student).permit(:student_id, :name, :email)
  end
end
