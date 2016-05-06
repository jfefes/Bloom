class LookupController < ApplicationController
    def find
      @slug = params[:slug]
      render "website/" + params[:slug]
    end
end
