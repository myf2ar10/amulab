# frozen_string_literal: true

class Admin::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # before_action :configure_sign_in_params, only: [:create]

# Deviseのデフォルトの挙動も必要なため、super を呼び出すことで親クラスの new メソッドを実行。
  def new
    super
  end

  def create
    super
  end

  def destroy
    super
  end

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end

  def after_sign_in_path_for(resource)
    admin_admin_top_path
  end

  def after_sign_out_path_for(resource)
    new_admin_session_path
  end

end