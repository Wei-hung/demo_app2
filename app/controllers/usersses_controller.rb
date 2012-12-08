class UserssesController < ApplicationController
  # GET /usersses
  # GET /usersses.json
  def index
    @usersses = Userss.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @usersses }
    end
  end

  # GET /usersses/1
  # GET /usersses/1.json
  def show
    @userss = Userss.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @userss }
    end
  end

  # GET /usersses/new
  # GET /usersses/new.json
  def new
    @userss = Userss.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @userss }
    end
  end

  # GET /usersses/1/edit
  def edit
    @userss = Userss.find(params[:id])
  end

  # POST /usersses
  # POST /usersses.json
  def create
    @userss = Userss.new(params[:userss])

    respond_to do |format|
      if @userss.save
        format.html { redirect_to @userss, :notice => 'Userss was successfully created.' }
        format.json { render :json => @userss, :status => :created, :location => @userss }
      else
        format.html { render :action => "new" }
        format.json { render :json => @userss.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /usersses/1
  # PUT /usersses/1.json
  def update
    @userss = Userss.find(params[:id])

    respond_to do |format|
      if @userss.update_attributes(params[:userss])
        format.html { redirect_to @userss, :notice => 'Userss was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @userss.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /usersses/1
  # DELETE /usersses/1.json
  def destroy
    @userss = Userss.find(params[:id])
    @userss.destroy

    respond_to do |format|
      format.html { redirect_to usersses_url }
      format.json { head :no_content }
    end
  end
end
