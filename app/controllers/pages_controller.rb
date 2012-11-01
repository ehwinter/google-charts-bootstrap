class PagesController < ApplicationController
  def about
  end

  def incentives
  end

  def faq
  end

  def supporters
  end

  def contact
  end

  def privacy
    
  end

  def about_summerhill_impact
  end

  def survey
  end

  def install
  end

  def baseline
  end

  def training
  end

  def challenge
    @shuttle_beats_subtitle = Snippet.find_by_name('shuttle-beats-subtitle')
    @chart = Array.new
    @titles = Array.new
    @comments = Array.new
    @post = Post.new
  
  
     #@tags- ['MY PERFORMANCE', 'MY TOTAL', 'GROUP PERFORMANCE']  

    if !current_user.nil?  
      @posts = Post.order('created_at desc').limit(2)
    else  
      @posts = Post.order('created_at desc').limit(5)
    end
    i=0
    @chart[i] = Chartola.area_chart
    @titles[i] = "How am I doing? Using a an Area Chart"
    @comments[i] = "The area chart is very good for showing differences between several values over time.
    Compare this with the bar chart and the combo chart. In all three cases the data is the
    same."

    
    i=i+1
    @chart[i] = Chartola.bar_chart
    @titles[i] = "How am I doing? Using a Bar Chart"
    @comments[i] = "The bar chart fousses attention on each difference between two values."

    i=i+1
    @chart[i] = Chartola.thin_bar_chart
    @titles[i] = "How am I doing? a Thin Bar Chart"
    @comments[i] = "The bar chart fousses attention on each difference between two values."

    
    i=i+1
    @chart[i] = Chartola.combo_chart
    @titles[i] = "How am I doing? Using a Combo Chart"
    @comments[i] =    "The combo chart is combines the line the the bar chart." 
    
    i=i+1
    @chart[i] = Chartola.combo3_chart
    @titles[i] = "How am I doing? Using a Combo Chart (target as a line)"
    @comments[i] =    "We can add the target as a line of a column." 

    i=i+1
    @chart[i] = Chartola.combo_chart_gas
    @titles[i] = "Gas Consumed"
    @comments[i] =    "If there is some upper/lower bound on a given element, this might be way to show it." 
    
 
    i=i+1
    @chart[i] = Chartola.scatter_km_liters_chart
    @titles[i] = "How am I doing?"
    @comments[i] =    "Scatter Chart: see everyone all at once.  Two dimensions of data e.g.
    litres and km are needed." 
 
    i=i+1
    @chart[i] = Chartola.line_with_variance
    @titles[i] = "How am I doing? Line Chart with Variance"
    @comments[i] =    "If there is some upper/lower bound on a given element, this might be way to show it." 
 

  end

  def payout
  end

  def drive_better
  end

  def drive_less
  end
  
  def how_shuttle_works
  end
  
  def value_of_shuttle
  end
  
  def rewards
  end
end
