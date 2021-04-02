# frozen_string_literal: true

# Controller
class ColorsController < ApplicationController
  before_action :set_color, only: %i[show edit update destroy]
  before_action :admin?, except: :index

  def index
    @colors = Color.descending_order
    render json: @colors, each_serializer: ColorSerializer
  end

  # GET /colors/1
  def show
    render json: @color, serializer: ColorSerializer
  end

  # GET /colors/new
  def new
    @color = Color.new
  end

  # GET /colors/1/edit
  def edit; end

  # POST /colors
  def create
    @color = Color.new(color_params)

    if @color.save
      render status: :created
    else
      render status: :unprocessable_entity
    end
  end

  # PATCH/PUT /colors/1
  def update
    if @color.update(color_params)
      render status: :ok
    else
      render status: :unprocessable_entity
    end
  end

  # DELETE /colors/1
  def destroy
    @color.destroy
    head :no_content
  end

  private

  def set_color
    @color = Color.find(params[:id])
  end

  def color_params
    params.require(:color).permit(:name, :color, :pantone, :year)
  end
end
