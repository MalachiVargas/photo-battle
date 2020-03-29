class BattleAttachmentsController < ApplicationController
  before_action :set_battle_attachment, only: [:show, :edit, :update, :destroy]

  # GET /battle_attachments
  # GET /battle_attachments.json
  def index
    @battle_attachments = BattleAttachment.all
  end

  # GET /battle_attachments/1
  # GET /battle_attachments/1.json
  def show
  end

  # GET /battle_attachments/new
  def new
    @battle_attachment = BattleAttachment.new
  end

  # GET /battle_attachments/1/edit
  def edit
  end

  # POST /battle_attachments
  # POST /battle_attachments.json
  def create
    @battle_attachment = BattleAttachment.new(battle_attachment_params)

    respond_to do |format|
      if @battle_attachment.save
        format.html { redirect_to @battle_attachment, notice: 'Battle attachment was successfully created.' }
        format.json { render :show, status: :created, location: @battle_attachment }
      else
        format.html { render :new }
        format.json { render json: @battle_attachment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /battle_attachments/1
  # PATCH/PUT /battle_attachments/1.json
  def update
    respond_to do |format|
      if @battle_attachment.update(battle_attachment_params)
        format.html { redirect_to @battle_attachment, notice: 'Battle attachment was successfully updated.' }
        format.json { render :show, status: :ok, location: @battle_attachment }
      else
        format.html { render :edit }
        format.json { render json: @battle_attachment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /battle_attachments/1
  # DELETE /battle_attachments/1.json
  def destroy
    @battle_attachment.destroy
    respond_to do |format|
      format.html { redirect_to battle_attachments_url, notice: 'Battle attachment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_battle_attachment
      @battle_attachment = BattleAttachment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def battle_attachment_params
      params.require(:battle_attachment).permit(:battle_id, :avatar)
    end
end
