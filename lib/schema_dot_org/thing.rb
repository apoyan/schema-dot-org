# frozen_string_literal: true

require 'schema_dot_org'

module SchemaDotOrg
  class Thing < SchemaType
    attr_accessor :name

    validates :name, type: String

    def _to_json_struct
      {
        'name' => name
      }
    end
  end
end
