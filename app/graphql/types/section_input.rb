module Types
  class SectionInput < Types::BaseInputObject
    description 'Represents a particular instance of a section'
    argument :title, String, required: true, description: 'Title of the section'
    argument :subtitle, String, required: false, description: 'Subtitle of the section'
    argument :video_url, String, required: false, description: 'The url for the video of the section'
    argument :video_duration, String, required: false, description: 'The duration of the video of the section'
    argument :content, String, required: false, description: 'The content of the section'
    argument :course_id, String, required: true, description: 'The course id of which this section belongs to'
  end
end