module Spree
  ProductProperty.class_eval do
    if SpreeGlobalize::Translations[:product_property].present?
      translates *SpreeGlobalize::Translations[:product_property], :fallbacks_for_empty_translations => true
      include SpreeGlobalize::Translatable
    end
  end
end
