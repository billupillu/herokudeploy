module Spree
  module Admin
    class ArtistProfilesController < ResourceController
      def index
        @artist_profiles = Spree::ArtistProfile.page(params[:page] || 1).per(50)
      end
    end
  end
end
