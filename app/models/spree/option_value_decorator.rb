module Spree
  OptionValue.class_eval do
    if SpreeGlobalize::Translations[:option_value].present?
      translates *SpreeGlobalize::Translations[:option_value], :fallbacks_for_empty_translations => true
      include SpreeGlobalize::Translatable
    end
  end
end
