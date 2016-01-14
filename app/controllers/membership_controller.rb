class MembershipController < ApplicationController
  def index
    @MembershipTiers = MembershipTier.all
  end

  def show
  end

end
