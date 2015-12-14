stations = ['Station 1', 'Station 2', 'Station 3', 'Station 4 ', 'Station 5', 'Station 6', 'Station 7', 'Station 8', 'Station 9'] 
station_counts = Hash.new({ value: 0 })

SCHEDULER.every '3s' do
  number = Time.now.to_i % 30
  random_station = stations.sample
  station_counts[random_station] = { label: random_station, value: (station_counts[random_station][:value] + number) }
  
  send_event('happy_stations', { items: station_counts.values })
end