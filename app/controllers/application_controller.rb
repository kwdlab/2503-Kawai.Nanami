class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  def profile_form_authenticity_token
    StackProf.run(mode: :wall, out: Rails.root.join('tmp/stackprof-form_authenticity_token.dump')) do
      form_authenticity_token
    end
  end

  private
  
    # ユーザーのログインを確認する
    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url, status: :see_other
      end
    end
end
