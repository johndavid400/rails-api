module Mutations
  class CreateSection < Mutations::BaseMutation
    description 'Create a section'
    argument  :input, 
              Types::SectionInput, 
              required: true, 
              description: "The section data"

    # field :section, Types::SectionType, null: true
    # null false

    def resolve(input:)
      input_h = input.to_h
      section = Section.create(input_h)
      section
    end
  end
end