class BetaSignUpsController < ApplicationController
  # GET /beta_sign_ups
  # GET /beta_sign_ups.json
  def index
    @beta_sign_ups = BetaSignUp.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @beta_sign_ups }
    end
  end

  # GET /beta_sign_ups/1
  # GET /beta_sign_ups/1.json
  def show
    @beta_sign_up = BetaSignUp.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @beta_sign_up }
    end
  end

  # GET /beta_sign_ups/new
  # GET /beta_sign_ups/new.json
  def new
    @beta_sign_up = BetaSignUp.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @beta_sign_up }
    end
  end

  # GET /beta_sign_ups/1/edit
  def edit
    @beta_sign_up = BetaSignUp.find(params[:id])
  end

  # POST /beta_sign_ups
  # POST /beta_sign_ups.json
  def create
    @beta_sign_up = BetaSignUp.new(params[:beta_sign_up])

    respond_to do |format|
      if @beta_sign_up.save
        format.html { redirect_to @beta_sign_up, notice: 'Beta sign up was successfully created.' }
        format.json { render json: @beta_sign_up, status: :created, location: @beta_sign_up }
      else
        format.html { render action: "new" }
        format.json { render json: @beta_sign_up.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /beta_sign_ups/1
  # PUT /beta_sign_ups/1.json
  def update
    @beta_sign_up = BetaSignUp.find(params[:id])

    respond_to do |format|
      if @beta_sign_up.update_attributes(params[:beta_sign_up])
        format.html { redirect_to @beta_sign_up, notice: 'Beta sign up was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @beta_sign_up.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /beta_sign_ups/1
  # DELETE /beta_sign_ups/1.json
  def destroy
    @beta_sign_up = BetaSignUp.find(params[:id])
    @beta_sign_up.destroy

    respond_to do |format|
      format.html { redirect_to beta_sign_ups_url }
      format.json { head :no_content }
    end
  end
end
