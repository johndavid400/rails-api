module Types
  class CourseInput < Types::BaseInputObject
    description 'Represents a particular instance of a course'
    argument :title, String, required: true, description: 'The title of the course'
    argument :description, String, required: false, description: 'The description of the course'
  end
end