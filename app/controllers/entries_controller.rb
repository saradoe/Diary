class EntriesController < ApplicationController
	def index
    @entries = Entry.all.order(updated_at: "desc")
  end

  def show
    @entry = Entry.find(params[:id])
  end
  def new
    @entry = Entry.new
  end

  def create
    puts "ENTRY: #{create_params.inspect}"

    @entry = Entry.create(create_params)
    redirect_to entry_path(@entry)
  end

  def destroy
    @entry = Entry.find(params[:id])
    @entry.delete
    redirect_to entries_path
  end

  def edit
    @entry = Entry.find(params[:id])
    render :new
  end

  def update
    @entry = Entry.find(params[:id])
    @entry.update_attributes(create_params)
    redirect_to entry_path(@entry)
  end
  
  private

    def create_params
      params[:entry].permit("title", "contents", "date")
    end
end