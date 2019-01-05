module Spree
  Taxon.class_eval do
    if SpreeGlobalize::Translations[:taxon].present?
      translates *SpreeGlobalize::Translations[:taxon], :fallbacks_for_empty_translations => true
      include SpreeGlobalize::Translatable
    end
  end
end
