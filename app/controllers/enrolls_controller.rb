class EnrollsController < ApplicationController
  def index
    @enrolls = Enroll.all
    # render('index') : default
  end

  def show
    @enroll = Enroll.find(params[:id])
  end

  def new
    @enroll = Enroll.new
  end

  def create
    # Create a new enroll
    @enroll = Enroll.new(enroll_params)
    if @enroll.save
      redirect_to(enrolls_path)
    else
      render('new')
    end
  end

  def edit
    @enroll = Enroll.find(params[:id])
  end

  def update
    # Load data
    @enroll = Enroll.find(params[:id])
    # Update data
    if @enroll.update_attributes(enroll_params)
      redirect_to(enroll_path(@enroll))
    else
      redirect_to('edit')
    end
  end

  def delete
    @enroll = Enroll.find(params[:id])
  end

  def destroy
    @enroll = Enroll.find(params[:id])
    @enroll.destroy
    redirect_to(enrolls_path)
  end

  private
  def enroll_params
    params.require(:enroll).permit(:student_id, :course_id, :percentage, :lettergrade)
  end
end
