class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  private

    # Confirma estar logueado.
    def logged_in_user
      unless logged_in?
        store_location #Si se quiere ir a una pagina pero falta loguearse, se graba el link deseado para despues de hacerlo
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end
end
