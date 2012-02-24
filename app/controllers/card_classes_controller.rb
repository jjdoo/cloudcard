class CardClassesController < ApplicationController
  # GET /card_classes
  # GET /card_classes.xml
  def index
    @card_classes = CardClass.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @card_classes }
    end
  end

  # GET /card_classes/1
  # GET /card_classes/1.xml
  def show
    @card_class = CardClass.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @card_class }
    end
  end

  # GET /card_classes/new
  # GET /card_classes/new.xml
  def new
    @card_class = CardClass.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @card_class }
    end
  end

  # GET /card_classes/1/edit
  def edit
    @card_class = CardClass.find(params[:id])
  end

  # POST /card_classes
  # POST /card_classes.xml
  def create
    @card_class = CardClass.new(params[:card_class])

    respond_to do |format|
      if @card_class.save
        format.html { redirect_to(@card_class, :notice => 'CardClass was successfully created.') }
        format.xml  { render :xml => @card_class, :status => :created, :location => @card_class }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @card_class.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /card_classes/1
  # PUT /card_classes/1.xml
  def update
    @card_class = CardClass.find(params[:id])

    respond_to do |format|
      if @card_class.update_attributes(params[:card_class])
        format.html { redirect_to(@card_class, :notice => 'CardClass was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @card_class.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /card_classes/1
  # DELETE /card_classes/1.xml
  def destroy
    @card_class = CardClass.find(params[:id])
    @card_class.destroy

    respond_to do |format|
      format.html { redirect_to(card_classes_url) }
      format.xml  { head :ok }
    end
  end
end
