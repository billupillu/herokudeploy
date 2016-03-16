module Spree
  module Admin
    class FeatureMenuHeadsController < ResourceController
      before_action :bla, only: [:create] 
      
      def index
        @feature_menu_heads = Spree::FeatureMenuHead.page(params[:page] || 1).per(50)
      end

      private
      	def bla
      		if Spree::FeatureMenuHead.all.count>=4
      			flash[:error] = "There can't be more than 4 subitems in this Section"
      			redirect_to "/admin/feature_menu_heads"
      		end    
      	end
      
    end
  end
end
