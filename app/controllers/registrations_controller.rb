class RegistrationsController < Devise::RegistrationsController

  def new

  end

  def new_volunteer
    resource = build_resource({})
    resource.build_profile
    respond_with resource do |format|
      format.html {render :new}
    end
  end

  def new_company
    resource = build_resource({})
    resource.build_company
    respond_with resource do |format|
      format.html {render :new}
    end
  end

  def create
    build_resource
    if resource.save
      if resource.active_for_authentication?
        set_flash_message :notice, :signed_up if is_navigational_format?
        sign_up(resource_name, resource)
        respond_with resource, :location => after_sign_up_path_for(resource)
      else
        set_flash_message :notice, :"signed_up_but_#{resource.inactive_message}" if is_navigational_format?
        expire_session_data_after_sign_in!
        respond_with resource, :location => after_inactive_sign_up_path_for(resource)
      end
    else
      clean_up_passwords resource
      respond_with resource
    end
  end
  def edit
      
  end
  def update
    # required for settings form to submit when password is left blank
    if params[:user][:password].blank? && params[:user][:password_confirmation].blank?
      params[:user].delete(:password)
      params[:user].delete(:password_confirmation)
    end
    self.resource = resource_class.to_adapter.get!(send(:"current_#{resource_name}").to_key)
    prev_unconfirmed_email = resource.unconfirmed_email if resource.respond_to?(:unconfirmed_email)
    response = resource.update_without_password(params.require(:user).permit(profile_attributes: [:name, :dob, :gender ,:contact_no, :profession, :image]))
    if response
      if is_navigational_format?
        flash_key = update_needs_confirmation?(resource, prev_unconfirmed_email) ?
          :update_needs_confirmation : :updated
        set_flash_message :notice, flash_key
      end
      sign_in resource_name, resource, :bypass => true
      respond_with resource, :location => after_update_path_for(resource)
    else
      clean_up_passwords resource
      respond_with resource
    end
  end
  def check_image
    params[:user][:profile_attributes][:image] = nil if params[:user][:profile_attributes][:image].blank?
    #      resource.profile.avatar = URI.parse(params[:avatar_url])
    resource.profile.image.build(:image_by => params[:image_from], :url => params[:avatar_url] , :thumb => params[:avatar_url], :discover_investors => params[:avatar_url]) if resource.profile and !params[:avatar_url].blank?
  end
  def sign_up_params
    params.require(:user).permit( :email, :password, :password_confirmation, :profile_attributes => [:name,:dob,:contact_no,:gender,:profession,:image] )
  end
  def build_resource(hash=nil)
    hash ||= resource_params || {}
    self.resource = resource_class.new_with_session(hash, session)
  end
  def resource_params
    params.require(:user).permit( :email, :password, :password_confirmation, :profile_attributes => [:name,:dob,:contact_no,:gender,:profession,:image],:company_attributes => [:name,:address,:logo,:website,:facebook_page,:linkedin,:description] )
  end
end