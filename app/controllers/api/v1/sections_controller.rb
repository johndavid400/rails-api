module Api
  module V1
    class SectionsController < ::Api::BaseController
      before_action :set_section, only: [:show, :update, :destroy]
    
    
      def index
        @sections = Section.where(course_id: params[:course_id]) 
        render json: { results: @sections }.to_json, status: :ok
      end
    
      def show
        render json: { section: @section, courseSections: @section.course.sections }
      end
    
      private
    
        def set_section
            @course = Course.friendly.find(params[:course_id])
            @section = @course.sections.friendly.find(params[:id])
        end
    
    end
    
  end
end
