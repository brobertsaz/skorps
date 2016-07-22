class SessionsController < Devise::SessionsController
  # POST /resource/sign_in
  def create
    self.resource = warden.authenticate!(auth_options)

    respond_with resource, location: after_sign_in_path_for(resource)
  end
end