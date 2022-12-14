class ApplicationController < ActionController::Base
  # before_action :store_admin_location!, if: :storable_location?
  # before_action :authenticate_admin!

  private
    # Its important that the location is NOT stored if:
    # - The request method is not GET (non idempotent)
    # - The request is handled by a Devise controller such as Devise::SessionsController as that could cause an
    #    infinite redirect loop.
    # - The request is an Ajax request as this can lead to very unexpected behaviour.
    def storable_location?
      request.get? && is_navigational_format? && !devise_controller? && !request.xhr?
    end

    def store_admin_location!
      # :user is the scope we are authenticating
      store_location_for(:admin, request.fullpath)
    end
end
