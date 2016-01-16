class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :getTiers

 def getTiers
  @membershipTiers = MembershipTier.limit(10).order("membermgmt__sort_order__c")
end


end
