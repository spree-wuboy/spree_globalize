module Spree
  ShippingMethod.class_eval do
    if SpreeGlobalize::Translations[:shipping_method].present?
      translates *SpreeGlobalize::Translations[:shipping_method], :fallbacks_for_empty_translations => true
      include SpreeGlobalize::Translatable
    end
  end
end
