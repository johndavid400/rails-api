module Api
  module V1
    class CoursesController < ::Api::BaseController
      
      before_action :test, only: [:index]
      # before_action :authenticate_user!, only: [:index]
      before_action :set_course, only: [:show, :update, :destroy]
      
      def index
        courses = Course.all
        render json: { results: courses }.to_json, status: :ok
      end
      
      def show
        render json: @course
      end
      
      private
      
      def set_course
        course_id = params[:id]
        @course = Course.friendly.find(course_id)
      end

      def test
        binding.pry
      end
    end
  end
end