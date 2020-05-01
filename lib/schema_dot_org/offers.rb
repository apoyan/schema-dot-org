# frozen_string_literal: true

require 'schema_dot_org'
require 'schema_dot_org/offer'

module SchemaDotOrg
  class Offers < SchemaType
    attr_accessor :high_price,
                  :low_price,
                  :offer_count,
                  :price_currency,
                  :offers

    validates :high_price,     type: BigDecimal
    validates :low_price,      type: BigDecimal
    validates :offer_count,    type: Integer
    validates :price_currency, type: String
    validates :offers,         type: Array, allow_nil: true

    def _to_json_struct
      {
        "highPrice" => high_price,
        "lowPrice" => low_price,
        "offerCount" => offer_count,
        "priceCurrency" => price_currency,
        "offers" => offers.map(&:to_json_struct)
      }
    end
  end
end
