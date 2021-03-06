class Admin::ApplicationController < ::ApplicationController
  before_action :authenticate_user!

  inherit_resources

  def resource_with_authorize
    authorize resource_without_authorize
    resource_without_authorize
  end
  def build_resource_with_authorize
    authorize build_resource_without_authorize
    resource_without_authorize
  end
  alias_method_chain :build_resource, :authorize
  alias_method_chain :resource, :authorize
  
end
