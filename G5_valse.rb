$temp = 0.3
$direct = 0.3


live_loop :bou do
  play :G5
  sleep $temp
  play :Fb5
  sleep $temp
  play :C6
  sleep $temp
end

live_loop :bass do
  play :G2
  sleep $temp * 3
end

live_loop :china do
  sleep $temp
  sample :guit_e_slide, rate: 0.66, slice: 1, pan: 0.5
  sleep $temp * rrand_i(2,3)
end

live_loop :amb do
  sample :ambi_drone
  sync :bass
end


live_loop :hat do
  sample :drum_cymbal_soft, pan: -0.7
  sleep $direct * rrand_i(1,4) /2
end

live_loop :dir do
  sample :drum_snare_soft
  sleep $direct * 4
end

live_loop :roll do
  loop do
    sample :drum_bass_hard
    sleep $direct/2
  end
  sleep $direct/2
end

