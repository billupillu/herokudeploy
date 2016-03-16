module Spree
  module Admin
    class TestimonialBannersController < ResourceController
      def index
        @testimonial_banners = Spree::TestimonialBanner.page(params[:page] || 1).per(50)
      end
    end
  end
end
