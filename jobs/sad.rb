stations = ['Station 1', 'Station 2', 'Station 3', 'Station 4 ', 'Station 5'] 
station_counts = Hash.new({ value: 1 })

SCHEDULER.every '2s' do
  random_station = stations.sample
  station_counts[random_station] = { label: random_station, value: (station_counts[random_station][:value] + 1) % 8 }
  
  send_event('sad_stations', { items: station_counts.values })
end