class EventsController < ApplicationController
  before_action :set_tree
  before_action :set_event, only: %i[show edit update destroy]

  # GET /events or /events.json
  def index
    @events = @tree.events
  end

  # GET /events/1 or /events/1.json
  def show; end

  # GET /events/new
  def new
    @event = @tree.events.build
  end

  # GET /events/1/edit
  def edit; end

  # POST /events or /events.json
  def create
    @event = @tree.events.build(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to tree_event_path(@tree, @event), notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1 or /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to tree_event_url(id: @event.id), notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: tree_event_url(id: @event.id) }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1 or /events/1.json
  def destroy
    @event.destroy

    respond_to do |format|
      format.html { redirect_to tree_events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_tree
    @tree = Tree.find(params[:tree_id])
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_event
    @event = @tree.events.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def event_params
    params.fetch(:event, {}).permit(:description)
  end
end
