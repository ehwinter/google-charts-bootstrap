class HomeController < ApplicationController
  def index
    @users = User.all
    @lorem = Faker::Lorem.new
    @shuttle_beats_subtitle = Snippet.find_by_name('shuttle-beats-subtitle')
    @results = get_results
    @post = Post.new
    @posts = Post.order('created_at desc').limit(4) 
  end
  def get_results
    # replace with Results model/Calcluator model
    results = {all: {ghg: 5.5897, dollars: 487.568},
               personal: {ghg: 6.3245, dollars: 10.738},
               }
    
  end
end
