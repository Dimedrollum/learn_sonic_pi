
$phase = 0.877
$quater = $phase/4
$half = $phase/2
$eighth = $phase/8

live_loop :drums do
  sample :loop_amen, pan: -1
  sleep $phase
  sample :loop_amen, pan: 1
  sleep $phase
end

live_loop :bass do
  sample :bass_thick_c, rate: 0.8, slice: $phase * 4, pan: -1
  sample :bass_thick_c, rate: 0.8, slice: $phase * 3, pan: -0.5
  sample :bass_thick_c, rate: 0.8, slice: $phase * 2, pan: 0.5
  sample :bass_thick_c, rate: 0.8, slice: $phase * 1, pan: 1
  
  sleep $eighth
  sample :bass_thick_c, rate: 0.7, slice: $phase * 4, pan: -1
  sample :bass_thick_c, rate: 0.8, slice: $phase * 3, pan: -0.5
  sample :bass_thick_c, rate: 0.8, slice: $phase * 2, pan: 0.5
  sample :bass_thick_c, rate: 1, slice: $phase * 1, pan: 1
  
  sleep $eighth/2
  sample :bass_thick_c, rate: 1, slice: $phase * 4, pan: -1
  sleep $eighth
  sample :bass_thick_c, rate: 1, slice: $phase * 3, pan: -0.5
  sleep $eighth/2
  sample :bass_thick_c, rate: 1, slice: $phase * 2, pan: 0.5
  sample :bass_thick_c, rate: 1, slice: $phase * 1, pan: 1
  
  sleep $eighth/2
  sample :bass_thick_c, rate: 0.7, slice: $phase * 4, pan: -1
  sleep $eighth
  sample :bass_thick_c, rate: 0.7, slice: $phase * 3, pan: -0.5
  sample :bass_thick_c, rate: 0.7, slice: $phase * 2, pan: 0.5
  sleep $eighth
  sample :bass_thick_c, rate: 0.7, slice: $phase * 1, pan: 1
  
  sleep $half
  sample :bass_thick_c, rate: 0.8, slice: $phase * 8, pan: -1
  sample :bass_thick_c, rate: 0.8, slice: $phase * 3, pan: -0.5
  sleep $eighth/2
  sample :bass_thick_c, rate: 0.8, slice: $phase * 2, pan: 0.5
  sample :bass_thick_c, rate: 0.8, slice: $phase * 1, pan: 1
  
  sync :drums
end

live_loop :ambient do
  sample :ambi_glass_hum
  sync :drums
end

