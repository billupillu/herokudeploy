module Spree
  module Admin
    class LookBooksController < ResourceController
      def index
        @look_books = Spree::LookBook.page(params[:page] || 1).per(50)
      end
    end
  end
end
