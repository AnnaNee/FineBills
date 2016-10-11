class EntriesController < ApplicationController

  respond_to :html, :xhr

  def index
    @entries = current_user.entries
  end

  def create
    @entry = current_user.entries.new(entries_params)
    @entry.save
    respond_with @entry
    # respond_to do |format|
    #   if @entry.save
    #     format.js { render json: @entry }
    #   else
    #     format.js { render json: @entry.errors.messages }
    # end
  end

  private

  def entries_params
    params.require(:entry).permit(:released_at,
                                  :description,
                                  :kind,
                                  :amount_cents)
  end

end
