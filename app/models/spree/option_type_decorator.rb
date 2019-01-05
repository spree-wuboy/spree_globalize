module Spree
  OptionType.class_eval do
    if SpreeGlobalize::Translations[:option_type].present?
      translates *SpreeGlobalize::Translations[:option_type], {fallbacks_for_empty_translations: true}
      include SpreeGlobalize::Translatable
    end
  end
end
