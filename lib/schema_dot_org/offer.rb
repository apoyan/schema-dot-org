# frozen_string_literal: true

require 'schema_dot_org'

module SchemaDotOrg
  class Offer < SchemaType
    attr_accessor :availability,
                  :url,
                  :price,
                  :price_currency,
                  :name

    validates :availability,   type: String
    validates :url,            type: String
    validates :price,          type: Integer
    validates :price_currency, type: String
    validates :name,           type: String

    def _to_json_struct
      {
        "availability"  => availability,
        "url"           => url,
        "price"         => price,
        "priceCurrency" => price_currency,
        "name"          => name
      }
    end
  end
end
