class PodcastsController < ApplicationController
    #  rescue_from ActiveRecord::RecordNotFound, with: :handle_record_not_found

    def index
        @podcasts = Podcast.all.order("created_at DESC")
    end
    
    def show 
        @podcast = Podcast.find(params[:id])
        @episodes = Episode.where(podcast_id: @podcast).order("created_at DESC")
            rescue ActiveRecord::RecordNotFound
        flash[:notice] = " We could not find that Podcast"
        redirect_to action: :index
    end
    
    # Justine Clarke | 2017
    
    # def handle_record_not_found
    # # Send it to the view that is specific for Post not found
    # render :not_found
    # end
    
end
