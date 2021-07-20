module Types
  class MutationType < Types::BaseObject


    field :create_course, Types::CourseType, mutation: Mutations::CreateCourse
    field :create_section, Types::SectionType, mutation: Mutations::CreateSection

    # field :create_course, Types::CourseType, null: false do
    #   description "Create a course"
    #   argument :input, Types::CourseInput, required: true, description: "Input values to create a course"
    # end

    # def create_course(input:)
    #   input_h = input.to_h
    #   course = Course.create(input_h)
    #   course
    # end
  end
end
