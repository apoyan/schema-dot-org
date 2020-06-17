# frozen_string_literal: true

require 'schema_dot_org'
require 'schema_dot_org/person'
require 'schema_dot_org/how_to_step'

module SchemaDotOrg
  class Recipe < SchemaType
    attr_accessor :name,
                  :recipe_category,
                  :recipe_cuisine,
                  :total_time,
                  :image,
                  :recipe_ingredient,
                  :recipe_instructions,
                  :recipe_sub_category,
                  :author,
                  :result_photo

    validates :name,              type: String
    validates :recipe_ingredient, type: Array

    def _to_json_struct
      {
        "name"               => name,
        "recipeCategory"     => recipe_category,
        "recipeCuisine"      => recipe_cuisine,
        "recipeInstructions" => recipe_instructions.map(&:to_json_struct),
        "recipeSubCategory"  => recipe_sub_category,
        "totalTime"          => total_time,
        "recipeIngredient"   => recipe_ingredient,
        "image"              => image,
        "author"             => author.to_json_struct,
        "resultPhoto"        => result_photo
      }
    end
  end
end
