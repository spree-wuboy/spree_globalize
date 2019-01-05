module Spree
  Taxonomy.class_eval do
    if SpreeGlobalize::Translations[:taxonomy].present?
      translates *SpreeGlobalize::Translations[:taxonomy], :fallbacks_for_empty_translations => true
      include SpreeGlobalize::Translatable
    end
  end
end
