class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  # GET /events
  # GET /events.json
  def index
    @events = Event.all
    @types = Type.all
  end

  # GET /events/1
  # GET /events/1.json
  def show
  end

  # GET /events/new
  def new
    @event = Event.new
    @places = Place.all
  end

  # GET /events/1/edit
  def edit
    @places = Place.all
    @types = Type.all
    @task = Task.new
    @shifts = [Time.new(@event.date.year, @event.date.month, @event.date.day, 16, 0)]
    (1..14).each do |i|
      @shifts.push(@shifts[0] + i*60*60)
    end
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)
    respond_to do |format|
      if @event.save
        format.html { redirect_to edit_event_path(@event.id), notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { redirect_to :back }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to root_path, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { redirect_to :back }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:name, :date, :user_id, :place_id)
    end
end
