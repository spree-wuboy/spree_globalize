module Spree
  Store.class_eval do
    if SpreeGlobalize::Translations[:store].present?
      translates *SpreeGlobalize::Translations[:store], :fallbacks_for_empty_translations => true
      include SpreeGlobalize::Translatable
    end
  end
end
