class PodcastsController < ApplicationController
    #  rescue_from ActiveRecord::RecordNotFound, with: :handle_record_not_found

    def index
        @podcasts = Podcast.all.order("created_at DESC")
    end
    
    def show 
        @podcast = Podcast.find(params[:id])
    rescue ActiveRecord::RecordNotFound
        flash[:notice] = " We could not find that Podcast"
        redirect_to action: :index
    end
    
    # def handle_record_not_found
    # # Send it to the view that is specific for Post not found
    # render :not_found
    # end
    
end
