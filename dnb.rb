
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

live_loop :random_bass do
  play choose [:C2, :D2, :E2]
  
  sleep $quater
end

live_loop :ambient do
  sample :ambi_lunar_land
  sleep $phase * 4
end

live_loop :hat do
  sample :drum_cymbal_soft, pan: choose([-1, 1])
  sleep choose [$quater, $half, $eighth]
end