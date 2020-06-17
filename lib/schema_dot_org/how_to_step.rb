# frozen_string_literal: true

require 'schema_dot_org'

module SchemaDotOrg
  class HowToStep < SchemaType
    attr_accessor :text
    validates :text, type: String, presence: true


    def _to_json_struct
      {
        'text' => text
      }
    end
  end
end
