class MembershipController < ApplicationController
  def index
    @MembershipTiers = MembershipTier.limit(10)
  end

  def show
    @membershipTier = MembershipTier.find(params[:id])
  end

end
