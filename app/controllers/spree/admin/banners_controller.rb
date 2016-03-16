module Spree
  module Admin
    class BannersController < ResourceController
      def index
        @banners = Spree::Banner.page(params[:page] || 1).per(50)
      end
    end
  end
end
