class CoursesController < ApplicationController
  def index
    @courses = Course.all
    # render('index') : default
  end

  def show
    @course = Course.find(params[:id])
  end

  def new
    @course = Course.new
  end

  def create
    # Create a new course
    @course = Course.new(course_params)
    if @course.save
      redirect_to(courses_path)
    else
      render('new')
    end
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    # Load data
    @course = Course.find(params[:id])
    # Update data
    if @course.update_attributes(course_params)
      redirect_to(course_path(@course))
    else
      redirect_to('edit')
    end
  end

  def delete
    @course = Course.find(params[:id])
  end

  def destroy
    @course = Course.find(params[:id])
    @course.destroy
    redirect_to(courses_path)
  end

  private
  def course_params
    params.require(:course).permit(:course_id, :description)
  end
end
