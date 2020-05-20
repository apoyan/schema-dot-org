# frozen_string_literal: true

require 'schema_dot_org'
require 'schema_dot_org/aggregate_rating'

module SchemaDotOrg
  class CreativeWorkSeries < SchemaType
    attr_accessor :aggregate_rating

    validates :aggregate_rating, type: SchemaDotOrg::AggregateRating, presence: true

    def _to_json_struct
      {
        'aggregateRating' => aggregate_rating
      }
    end
  end
end
