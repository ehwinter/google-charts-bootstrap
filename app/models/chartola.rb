class Chartola
  def self.area_chart
    data_table = GoogleVisualr::DataTable.new
    # Add Column Headers
    data_table.new_column('string', 'Week' )
    data_table.new_column('number', "Groups")
    data_table.new_column('number', 'Yours')
    
    # Add Rows and Values
    data_table.add_rows([

     ['B1', 1.0, 0.7],
     ['B2', 0.9, 1.3],
     ['B3', 1.2, 1.0],
     ['C1', 1.0, 0.95],
     ['C2', 1.0, 0.8],
     ['C3', 1.0, 1.0],
     ['C4', 1.0, 0.7]
    ])
    option = { 
      width: 600, 
      height: 400,
      title: 'Comparing Your Consumption with the Group\'s Consumption', 
      hAxis: {title: 'Week: Baseline and Challenge'},
      vAxis: {title: 'Consumption Compared to Baseline'},
    }
    GoogleVisualr::Interactive::AreaChart.new(data_table, option)    


  end
  
  def self.bar_chart
      data_table = GoogleVisualr::DataTable.new
      # Add Column Headers
      data_table.new_column('string', 'Week' )
      data_table.new_column('number', 'Average')
      data_table.new_column('number', 'Yours')
      
      # Add Rows and Values
      data_table.add_rows([
  
       ['B1', 0, 0.7],
       ['B2', 0, 1.3],
       ['B3', 1.2, 1.0],
       ['C1', 1.0, 0.95],
       ['C2', 1.0, 0.8],
       ['C3', 1.0, 1.0],
       ['C4', 1.0, 0.7]
      ])
      option = { 
        width: 600, 
        height: 400,
        seriesType: "bars",
        colors: ["blue", "green"],
        fontName: "serif",
        #series: {'0' =>  {type: "line"}}, 
        title: 'Challenge Kilometre Summary' 
        }
      GoogleVisualr::Interactive::ComboChart.new(data_table, option)    
  end
  def self.thin_bar_chart
    data_table = GoogleVisualr::DataTable.new
    # Add Column Headers
    data_table.new_column('string', 'Measure' )
    data_table.new_column('number', 'Kilometres')

    
    # Add Rows and Values
    data_table.add_rows([

     ['Current', 100],
     ['Target', 90]

    ])
    option = { 
      width: 100, 
      height: 400,
      seriesType: "bars",
      colors: ["blue", "green"],
      fontName: "serif",
      vAxis: {minValue: 0},
      legend: {position: 'bottom'},
      #series: {'0' =>  {type: "line"}}, 
      title: 'Comparing Your Consumption with the Group\'s Consumption' 
      }
    GoogleVisualr::Interactive::ComboChart.new(data_table, option)    
  end
    
  def self.combo_chart_gas
    data_table = GoogleVisualr::DataTable.new
    # Add Column Headers
    data_table.new_column('string', 'Week' )
    data_table.new_column('number', 'Baseline')
    data_table.new_column('number', 'Yours')
    data_table.new_column('number', 'Target')  
      
    # Add Rows and Values
    data_table.add_rows([
     ['M', 1.000,0.700,0.900],
     ['T',0.900, 1.300,0.900],
     ['W', 1.200, 1.000, 1.100],
     ['T', 1.000,0.900,0.900],
     ['F', 1.000,0.800,0.900],
     ['S', 1.000, 1.000,0.900],
     ['S', 1.000,0.700,0.900],
     ['M', 1.000,0.700,0.900],
     ['T',0.900, 1.300,0.900],
     ['W', 1.200, 1.000, 1.100],
     ['T', 1.000,0.900,0.900],
     ['F', 1.000,0.800,0.900],
     ['S', 1.000, 1.000,0.900],
     ['S', 1.000,0.700,0.900],
     ['M', 1.000,0.700,0.900],
     ['T',0.900, 1.300,0.900],
     ['W', 1.200, 1.000, 1.100],
     ['T', 1.000,0.900,0.900],
     ['F', 1.000,0.800,0.900],
     ['S', 1.000, 1.000,0.900],
     ['S', 1.000,0.700,0.900]


    ])
    option = { 
      width: 640, 
      height: 400,
      seriesType: "bars",
      series: {'2' =>  {type: "line"}}, 
      legend: {position: 'bottom', textStyle: {color: 'gray', fontSize: 13}}
      }
    GoogleVisualr::Interactive::ComboChart.new(data_table, option)    
  end
    
    
    def self.combo3_chart
    data_table = GoogleVisualr::DataTable.new
    # Add Column Headers
    data_table.new_column('string', 'Week' )
    data_table.new_column('number', 'Baseline')
    data_table.new_column('number', 'Yours')
    data_table.new_column('number', 'Target')  
      
    # Add Rows and Values
    data_table.add_rows([

     ['M', 1000, 700, 900],
     ['T', 900, 1300, 900],
     ['W', 1200, 1000, 1100],
     ['T', 1000, 900, 900],
     ['F', 1000, 800, 900],
     ['S', 1000, 1000, 900],
     ['S', 1000, 700, 900],
     ['M', 1000, 700, 900],
     ['T', 900, 1300, 900],
     ['W', 1200, 1000, 1100],
     ['T', 1000, 900, 900],
     ['F', 1000, 800, 900],
     ['S', 1000, 1000, 900],
     ['S', 1000, 700, 900],
     ['M', 1000, 700, 900],
     ['T', 900, 1300, 900],
     ['W', 1200, 1000, 1100],
     ['T', 1000, 900, 900],
     ['F', 1000, 800, 900],
     ['S', 1000, 1000, 900],
     ['S', 1000, 700, 900]

    ])
    option = { 
      width: 640, 
      height: 400,
      seriesType: "bars",
      series: {'2' =>  {type: "line"}}, 
      legend: {position: 'bottom', textStyle: {color: 'gray', fontSize: 13}}
      }
    GoogleVisualr::Interactive::ComboChart.new(data_table, option)    
  end
  
  def self.combo_chart_km
    data_table = GoogleVisualr::DataTable.new
    # Add Column Headers
    data_table.new_column('string', 'day' )
    data_table.new_column('number', 'BASELINE')
    data_table.new_column('number', 'CHALLENGE')
    data_table.new_column('number', '10% TARGET')  
    days=%w(M T W R F S S)
    rand = Random.new
    
    # Add Rows and Values
    data_table.add_rows([

     ['B1', 1.0, 0.7, 0.9],
     ['B2', 0.9, 1.3, 0.9],
     ['B3', 1.2, 1.0, 1.1],
     ['C1', 1.0, 0.95, 0.9],
     ['C2', 1.0, 0.8, 0.9],
     ['C3', 1.0, 1.0, 0.9],
     ['C4', 1.0, 0.7, 0.9]
    ])
    option = { 
      width: 600, 
      height: 400,
      seriesType: "bars",
      series: {'2' =>  {type: "line"}}, 
      title: 'Comparing Your Consumption with the Group\'s Consumption' 
      }
    GoogleVisualr::Interactive::ComboChart.new(data_table, option)    
  end
  def self.combo_chart
    data_table = GoogleVisualr::DataTable.new
    # Add Column Headers
    data_table.new_column('string', 'Week' )
    data_table.new_column('number', 'Average')
    data_table.new_column('number', 'Yours')
    
    # Add Rows and Values
    data_table.add_rows([

     ['B1', 1.0, 0.7],
     ['B2', 0.9, 1.3],
     ['B3', 1.2, 1.0],
     ['C1', 1.0, 0.95],
     ['C2', 1.0, 0.8],
     ['C3', 1.0, 1.0],
     ['C4', 1.0, 0.7]
    ])
    option = { 
      width: 600, 
      height: 400,
      seriesType: "bars",
      series: {'0' =>  {type: "line"}}, 
      title: 'Comparing Your Consumption with the Group\'s Consumption' 
      }
    GoogleVisualr::Interactive::ComboChart.new(data_table, option)    
  end
  
  def self.combo_test
    data_table = GoogleVisualr::DataTable.new
    # Add Column Headers

    data_table.new_column('string', 'Month' )

    ['Bolivia', 'Ecuador', 'Madagascar', 'Papua New Guinea', 'Rwanda', 'Average'].each do |c|
      data_table.new_column('number', c)
    end
    # Add Rows and Values
    data_table.add_rows([
          ['2004/05',  165,      938,         522,             998,           450,      614.6],
          ['2005/06',  135,      1120,        599,             1268,          288,      682],
          ['2006/07',  157,      1167,        587,             807,           397,      623],
          ['2007/08',  139,      1110,        615,             968,           215,      609.4],
          ['2008/09',  136,      691,         629,             1026,          366,      569.6]
    ])
    option = { 
      width: 600, 
      height: 400,
      title: 'Demo Monthly Coffee Production by Country',
      vAxis: {title: "Cups"},
      hAxis: {title: "Month"},
      seriesType: "bars",
      series: {'5' =>  {type: "line"}} 
    }
    GoogleVisualr::Interactive::ComboChart.new(data_table, option)    
          
  end
  def self.scatter_km_liters_chart
    data_table = GoogleVisualr::DataTable.new
    # Add Column Headers
    data_table.new_column('number', 'km')
    data_table.new_column('number', 'litres')
    drivers = Array.new
    (0..400).each do |i|
      #km_week=rand(41..335)
      km_week=41
      #km_liter=rand(5..16)
      km_liter=5
      liters = km_week/km_liter
      drivers[i] = [km_week, liters]
    end
    # Add Rows and Values
    data_table.add_rows(drivers)
    option = { width: 600, height: 400, 
      title: 'All Drivers: KM Driven, Litres Consumed' ,
      hAxis: {title: 'Kilometers Driven (week)', minValue: 0, maxValue: 400},
      vAxis: {title: 'Litres Consumed'},
      legend: 'none'
    }
    
    GoogleVisualr::Interactive::ScatterChart.new(data_table, option)    
  end
  def self.pie_chart(is3d=true)
  
    data_table = GoogleVisualr::DataTable.new
    data_table.new_column('string', 'Greenhouse Gasses')
    data_table.new_column('number', 'Burned')
    data_table.add_rows(2)
    data_table.set_cell(0, 0, 'Used'     )
    data_table.set_cell(0, 1, 11000 )
    data_table.set_cell(1, 0, 'Saved'      )
    data_table.set_cell(1, 1, 2000  )

    opts   = { :width => 600, :height => 400, :title => 'Greenhouse Gasses Saved', :is3D => is3d }
    chart = GoogleVisualr::Interactive::PieChart.new(data_table, opts)
  
  end
  def self.line_with_variance
    data_table = GoogleVisualr::DataTable.new
    data_table.new_column('string', 'Week')
    data_table.new_column('number', 'Kilometers')
    # Columns with role definition
    data_table.new_column('number'  , nil, nil, 'interval')
    data_table.new_column('number'  , nil, nil, 'interval')
    data_table.new_column('string'  , nil, nil, 'annotation')
    data_table.new_column('string'  , nil, nil, 'annotationText')
    data_table.new_column('boolean' , nil, nil, 'certainty')
  
    data_table.add_rows([
      ['Baseline 1', 1000, 900 , 1100, 'A', '300 Users Online'  , true],
      ['Baseline 2'  , 1170, 1000, 1200, 'B', '350 Users' , true],
      ['Baseline 3' , 660 , 550 , 800 , 'C', '400 Users', true],
      ['Challenge 1' , 1030, nil , nil , nil, nil            , false]
    ])
  
    opts   = { :width => 600, :height => 400, :title => 'Kilometers', :legend => 'none' }
    chart = GoogleVisualr::Interactive::LineChart.new(data_table, opts)
  end
  
end