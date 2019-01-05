module Spree
  Property.class_eval do
    if SpreeGlobalize::Translations[:property].present?
      translates *SpreeGlobalize::Translations[:property], :fallbacks_for_empty_translations => true
      include SpreeGlobalize::Translatable
    end
  end
end
