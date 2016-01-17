class JoinController < ApplicationController
  def index

  end

  def create
    puts "PARAMETERS: #{params[:tier]}"
    redirect_to action: 'index', tier: params[:tier]
  end

  def createMembership

    #create the account
    @account = Account.new
    @account.name = params[:firstname] + ' ' + params[:lastname]
    @account.membermgmt__externalid__c = SecureRandom.uuid
    @account.shippingstreet = params[:streetAddress]
    @account.shippingcity = params[:city]
    @account.shippingstate = params[:state]
    @account.save

    #create the contact
    @contact = Contact.new
    #@contact.membermgmt__externalid__c = SecureRandom.uuid
    @contact.account__membermgmt__externalid__c = @account.membermgmt__externalid__c
    @contact.firstname = params[:firstname]
    @contact.lastname = params[:lastname]
    @contact.email = params[:email]
    @contact.phone = params[:phone]
    @contact.save

    #create a Membership
    @membership = Membership.new
    @membership.membermgmt__member__r__membermgmt__externalid__c = @account.membermgmt__externalid__c
    @membership.membermgmt__membership_tier__c = MembershipTier.find(params[:tier]).sfid
    @membership.membermgmt__payment_status__c = 'Pending'
    @membership.save

    redirect_to action: 'payment', tier: params[:tier]
  end

  def new
    @MembershipTiers = MembershipTier.limit(10).order("membermgmt__sort_order__c")
    @MembershipBenefits = MembershipBenefits.where(membermgmt__type__c: 'Default').order("name")

  end

  def show

    @MembershipTier = MembershipTier.find(params[:id])

  end

  def payment
     @MembershipTier = MembershipTier.find(params[:tier])
     #redirect_to action: 'thanks', tier: params[:tier]
  end

  def thanks
     @MembershipTier = MembershipTier.find(params[:tier])
  end
end
