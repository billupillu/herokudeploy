module Spree
  module Admin
    class DontMissOutsController < ResourceController
      def index
        @dont_miss_outs = Spree::DontMissOut.page(params[:page] || 1).per(50)
      end
    end
  end
end
