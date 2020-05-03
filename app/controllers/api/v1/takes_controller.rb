module Api
  module V1
    class TakesController < ApplicationController
      before_action :set_take, only: [:show, :update, :destroy]

      # GET /takes
      def index
        @takes = Take.all

        render json: @takes
      end

      # GET /takes/1
      def show
        render json: @take
      end

      # POST /takes
      def create
        @take = Take.new(take_params)

        if @take.save
          render json: @take, status: :created, location: @take
        else
          render json: @take.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /takes/1
      def update
        if @take.update(take_params)
          render json: @take
        else
          render json: @take.errors, status: :unprocessable_entity
        end
      end

      # DELETE /takes/1
      def destroy
        @take.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_take
          @take = Take.find(params[:id])
        end

        # Only allow a trusted parameter "white list" through.
        def take_params
          params.require(:take).permit(:date_and_time, :user_id, :drug_id)
        end
    end
  end
end
