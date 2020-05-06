# frozen_string_literal: true

require 'schema_dot_org'
require 'schema_dot_org/aggregate_rating'
require 'schema_dot_org/aggregate_offer'

module SchemaDotOrg
  class Product < SchemaType
    attr_accessor :name,
                  :aggregate_rating,
                  :offers

    validates :image, type: String, allow_nil: true
    validates :name, type: String
    validates :aggregate_rating, type: SchemaDotOrg::AggregateRating
    validates :offers, type: SchemaDotOrg::AggregateOffer

    def _to_json_struct
      {
        "image" => image,
        "name" => name,
        "aggregateRating" => aggregate_rating.to_json_struct,
        "offers" => offers.to_json_struct
      }
    end
  end
end
