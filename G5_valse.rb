$temp = 0.3
$direct = 0.3


live_loop :bou do
  use_synth :saw
  play :G4
  sleep $temp
  use_synth :blade
  play :Fb4
  sleep $temp
  use_synth :pulse
  play :C3
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

live_loop :ambL do
  sample :ambi_drone, pan: -1
  sync :bass
end

live_loop :ambR do
  sample :ambi_drone, rate: -1, pan: 1
  sync :bass
end

live_loop :hat do
  sample :drum_cymbal_soft, pan: -0.7
  sleep $direct * rrand_i(1,4) /2
end

live_loop :dir do
  sample :drum_snare_soft, amp: 10
  sleep $direct * 4
end

live_loop :roll do
  sample :drum_bass_hard, amp: 1.3
  sleep $direct/2
end

