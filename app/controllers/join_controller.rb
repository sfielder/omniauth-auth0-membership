class JoinController < ApplicationController
  def index
  end

  def create
  end

  def new

    @MembershipTiers = MembershipTier.limit(10)
    @MembershipBenefits = MembershipBenefits.order("name")

  end

  def show

    @MembershipTier = MembershipTier.limit(1)[0]

  end

  def payment
  end

  def thanks
  end
end
