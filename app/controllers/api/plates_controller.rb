class Api::PlatesController < ApplicationController
    before_action :set_plate, only: [:show, :update, :destroy, :upvote, :downvote]

    def index
        render json: Plate.all
    end

    def show
        # @plate = JSON.parse(@plate.to_json)
        # .merge(upvote: @plate.upvote_count, downvote: @plate.downvote_count)
        set_plate
       render json: @plate
    end
    def upvote
        set_plate
        @plate.upvote_from current_user
        render json: { upvotes: @plate.upvote_count, downvotes: @plate.downvote_count}
    end

    def votes
        set_plate
        render json: { upvotes: @plate.upvote_count, downvotes: @plate.downvote_count}
    end

    def downvote
        set_plate
       @plate.downvote_from current_user
       render json: { upvotes: @plate.upvote_count , downvotes: @plate.downvote_count}
    end

    def create
        plate = current_user.plates.build(plate_params)
        if plate.save
            render json: plate
        else
            render json: {message: plate.errors}, status: 400
        end
    end

    def update
       if @plate.update(plate_params)
        render json: {message: "Successfully updated dish"}, status: 200
       else
        render json: {message: "Unable to update"}, status: 400
       end
    end

    def destroy
        if @plate.destroy
            render json: Plate.all
        else
            render json: {message: plate.errors}, status: 400
        end
    end
end

private

def set_plate
    @plate = Plate.find_by(id: params[:id])
    # @plate = JSON.parse(@plate.to_json)
    #     .merge(upvote: @plate.upvote_count, downvote: @plate.downvote_count)
end

def plate_params
    params.require(:plate).permit(:name, :description, :img_url, :user_id)
end