class CouponsController < ApplicationController

  def index
    @coupons = Coupon.all
  end


  def new
  end

  def show
    # binding.pry
    @coupon = Coupon.find(params[:id])
  end


  def create
    # binding.pry
    @coupon = Coupon.create(coupon_code: params[:coupon_code], store: params[:store])
    redirect_to coupon_path(@coupon)
  end

end
