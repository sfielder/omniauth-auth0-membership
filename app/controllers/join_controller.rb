class JoinController < ApplicationController
  def index
  end

  def create
    puts "PARAMETERS: #{params[:tier]}"
    redirect_to action: 'index', tier: params[:tier]
  end

  def new
    @MembershipTiers = MembershipTier.limit(10).order("membermgmt__sort_order__c")
    @MembershipBenefits = MembershipBenefits.where(membermgmt__type__c: 'Default').order("name")

  end

  def show

    @MembershipTier = MembershipTier.find(params[:id])

  end

  def payment
  end

  def thanks
  end
end
