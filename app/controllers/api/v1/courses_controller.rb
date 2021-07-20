module Api
  module V1
    class CoursesController < ::Api::BaseController
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
        @course = Course.friendly.find(params[:id])
      end
    end
  end
end