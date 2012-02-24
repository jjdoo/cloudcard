class EleCouponsController < ApplicationController
  # GET /ele_coupons
  # GET /ele_coupons.xml
  def index
    @ele_coupons = EleCoupon.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ele_coupons }
    end
  end

  # GET /ele_coupons/1
  # GET /ele_coupons/1.xml
  def show
    @ele_coupon = EleCoupon.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ele_coupon }
    end
  end

  # GET /ele_coupons/new
  # GET /ele_coupons/new.xml
  def new
    @ele_coupon = EleCoupon.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ele_coupon }
    end
  end

  # GET /ele_coupons/1/edit
  def edit
    @ele_coupon = EleCoupon.find(params[:id])
  end

  # POST /ele_coupons
  # POST /ele_coupons.xml
  def create
    @ele_coupon = EleCoupon.new(params[:ele_coupon])

    respond_to do |format|
      if @ele_coupon.save
        format.html { redirect_to(@ele_coupon, :notice => 'EleCoupon was successfully created.') }
        format.xml  { render :xml => @ele_coupon, :status => :created, :location => @ele_coupon }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ele_coupon.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ele_coupons/1
  # PUT /ele_coupons/1.xml
  def update
    @ele_coupon = EleCoupon.find(params[:id])

    respond_to do |format|
      if @ele_coupon.update_attributes(params[:ele_coupon])
        format.html { redirect_to(@ele_coupon, :notice => 'EleCoupon was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ele_coupon.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ele_coupons/1
  # DELETE /ele_coupons/1.xml
  def destroy
    @ele_coupon = EleCoupon.find(params[:id])
    @ele_coupon.destroy

    respond_to do |format|
      format.html { redirect_to(ele_coupons_url) }
      format.xml  { head :ok }
    end
  end
end
