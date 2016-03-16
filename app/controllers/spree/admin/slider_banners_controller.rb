module Spree
  module Admin
    class SliderBannersController < ResourceController
      def index
        @slider_banners = Spree::SliderBanner.page(params[:page] || 1).per(50)
      end
    end
  end
end
