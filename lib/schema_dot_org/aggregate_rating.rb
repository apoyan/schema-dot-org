# frozen_string_literal: true

require 'schema_dot_org'
require 'schema_dot_org/thing'

module SchemaDotOrg
  class AggregateRating < SchemaType
    attr_accessor :best_rating,
                  :worst_rating,
                  :rating_count,
                  :rating_value,
                  :item_reviewed

    validates :best_rating, type: Float
    validates :worst_rating, type: Float
    validates :rating_count, type: Integer
    validates :rating_value, type: Float, allow_nil: true
    validates :item_reviewed, type: SchemaDotOrg::Thing, allow_nil: true

    def _to_json_struct
      {
        "bestRating" => best_rating,
        "worstRating" => worst_rating,
        "ratingCount" => rating_count,
        "ratingValue" => rating_value,
        "itemReviewed" => item_reviewed
      }
    end
  end
end
