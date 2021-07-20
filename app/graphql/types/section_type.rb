module Types
  class SectionType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: true
    field :subtitle, String, null: true
    field :slug, String, null: true
    field :videoUrl, String, null: true
    field :videoDuration, String, null: true
    field :content, String, null: true
    field :published_at, GraphQL::Types::ISO8601DateTime, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :course_id, Integer, null: true
    field :course, Types::CourseType, null:false
  end
end
