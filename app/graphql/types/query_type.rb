module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.


    field :sections, [Types::SectionType], null: false, description: "All sections"
    field :section, Types::SectionType, null: false do
      description "A section of a course"
      argument :id, ID, required: true, description: 'ID or slug of the section' 
    end
    field :courses, [Types::CourseType], null: false, description: "All courses"
    field :course, Types::CourseType, null: false do
      description "A course"
      argument :id, ID, required: true, description: 'ID or slug of the section'
    end
    def sections
      Section.all()
    end
    
    def section(id:)
      Section.friendly.find(id)
    end
    
    def courses
      Course.all()
    end

    def course(id:)
      Course.friendly.find(id)
    end

  end
end
