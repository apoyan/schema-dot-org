# frozen_string_literal: true

require 'schema_dot_org'

module SchemaDotOrg
  class AggregateRating < SchemaType
    attr_accessor :best_rating,
                  :worst_rating,
                  :rating_count,
                  :rating_value

    validates :best_rating,  type: Float
    validates :worst_rating, type: Float
    validates :rating_count, type: Integer
    validates :rating_value, type: Float, allow_nil: true

    def _to_json_struct
      {
        "bestRating" => best_rating,
        "worstRating" => worst_rating,
        "ratingCount" => rating_count,
        "ratingValue" => rating_value
      }
    end
  end
end
