class CoursesController < ApplicationController
  skip_before_action :verify_authenticity_token
  layout 'general'

  def index
    @courses = Course.all
    # render('index') : default
  end

  def show
    @course = Course.find(params[:id])
    session[:passed_variable] = @course
  end

  def new
    @course = Course.new
  end

  def create
    # Create a new course
    @course = Course.new(course_params)
    if @course.save
      flash[:notice] = "Created succesfully"
      redirect_to(courses_path)
    else
      flash[:notice] = "Invalid input"
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
      flash[:notice] = "Updated succesfully"
      redirect_to(courses_path)
    else
      flash[:notice] = "Invalid input"
      redirect_to('edit')
    end
  end

  def delete
    @course = Course.find(params[:id])
  end

  def destroy
    @course = Course.find(params[:id])
    @course.destroy
    flash[:notice] = "Deleted succesfully"
    redirect_to(courses_path)
  end

  def histogram
    @course = Course.find(params[:id])
    gon.enrolls = @course.enrolls
  end

  def calculate
    @enrolls = JSON.parse(params[:data_value])

    @enrolls.each do |e|
        @enroll = Enroll.find(e['id'])
        @enroll.update(:lettergrade => e['lettergrade'])
    end
    if @enrolls.any?
      @a = @enrolls[0]
      redirect_to(course_path(:id => @a['course_id']))
    else
      redirect_to(courses_path)
    end
  end


  private
  def course_params
    params.require(:course).permit(:course_id, :description)
  end
end
