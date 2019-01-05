module Spree
  Promotion.class_eval do
    if SpreeGlobalize::Translations[:promotion].present?
      translates *SpreeGlobalize::Translations[:promotion], :fallbacks_for_empty_translations => true
      include SpreeGlobalize::Translatable
    end
  end
end
