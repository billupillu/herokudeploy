module Spree
  module Admin
    class FeatureMenuSubitemsController < ResourceController
    	before_action :abrakadabra, only: [:create]    	
      def index
        @feature_menu_subitems = Spree::FeatureMenuSubitem.page(params[:page] || 1).per(50)
      end

      private      
      	def abrakadabra
      		a = Spree::FeatureMenuSubitem
      		k = params[:feature_menu_subitem][:spree_feature_menu_head_id]      		
      		if a.where(spree_feature_menu_head_id: k).count>=8
      			flash[:error] = "There can't be more than 8 subitems in #{Spree::FeatureMenuHead.find(k).feature_menu_heading}"
      			redirect_to "/admin/feature_menu_subitems"
      		end      		
      	end
    end
  end
end
