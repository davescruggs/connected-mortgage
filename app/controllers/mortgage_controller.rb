class MortgageController < ApplicationController
  before_filter :authenticate_user!

  def index
    @users = User.all
  end

  def calculate
    #Inputs
    loan = params[:loan_amount].to_f
    rate = params[:interest_rate].to_f
    term = params[:term].to_f
    if params[:term_unit].to_i == 2
      term = term * 12
    end


    #Calculations
    r = (rate/12)/100

    top_half = ((1+r)**term)*r*loan
    bottom_half = ((1+r)**term)-1
    repayment = top_half/bottom_half

    interest = (repayment*term) - loan


    #Array testing
    @amount_owed = []
    @amount_paid = []
    for i in 0..term
      @amount_owed << (((1+r)**i)*loan) - (((((1+r)**i) - 1)/((1+r)-1))*repayment)
      @amount_paid << (((((1+r)**i) - 1)/((1+r)-1))*repayment)
    end



    #Outputs
    if params[:term_unit].to_i == 2
      @term_length = (term/12).to_i.to_s + " years"
    else
      @term_length = (term).to_i.to_s + " months"
    end
    @monthly_repayment = "%5.2f" % repayment
    @interest_paid = "%5.2f" % interest
    @loan_amount = "%5.0f" % loan
    @interest_rate = rate
    @term_length_in_months = term

  end

end