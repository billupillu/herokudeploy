module Spree
  module Admin
    class FeatureMenuImagesController < ResourceController
      def index
        @feature_menu_images = Spree::FeatureMenuImage.page(params[:page] || 1).per(50)
      end
    end
  end
end
