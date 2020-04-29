class Api::V1::CoursesController < ApplicationController
  def index
      @courses = Course.all
      render json: @courses
    end

  def show
    @course = Course.find(params[:id])
    render json: @course
  end

  def create
    @course = Course.create!(course_params)
    render json: { course: CourseSerializer.new(@course) }
  end

  private
  def course_params
    params.require(:course).permit(:name, :difficulty, :description, :img_url)
  end

end
