

SCHEDULER.every '2s' do

  send_event('bored',   { value: rand(100) })
  send_event('excited',   { value: rand(35) })
  send_event('happy',   { value: rand(50) })
  send_event('sad',   { value: rand(10) })
  send_event('worried',   { value: rand(20) })
end