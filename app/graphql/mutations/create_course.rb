module Mutations
  class CreateCourse < Mutations::BaseMutation
    description 'Create a course'
    argument :input, Types::CourseInput, required: true, description: "The courses data"
    
    def resolve(input:)
      input_h = input.to_h
      course = Course.create(input_h)
      course
    end
  end
end