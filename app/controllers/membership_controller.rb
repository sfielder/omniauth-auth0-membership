class MembershipController < ApplicationController
  def index
    @MembershipTiers = MembershipTier.limit(10)

  end

  def new

  end

  def show
    @membershipTier = MembershipTier.find(params[:id])
    @membershipBenefits = MembershipBenefits.where(membermgmt__membership_tier__c: @membershipTier.sfid, membermgmt__type__c: 'Default')
    @addlMembershipBenefits = MembershipBenefits.where(membermgmt__membership_tier__c: @membershipTier.sfid, membermgmt__type__c: 'Additional')

  end

  def source

  end

  def select

  end

end
