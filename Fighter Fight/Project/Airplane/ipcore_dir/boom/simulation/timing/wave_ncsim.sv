
 
 
 

 



window new WaveWindow  -name  "Waves for BMG Example Design"
waveform  using  "Waves for BMG Example Design"


      waveform add -signals /boom_tb/status
      waveform add -signals /boom_tb/boom_synth_inst/bmg_port/CLKA
      waveform add -signals /boom_tb/boom_synth_inst/bmg_port/ADDRA
      waveform add -signals /boom_tb/boom_synth_inst/bmg_port/DINA
      waveform add -signals /boom_tb/boom_synth_inst/bmg_port/WEA
      waveform add -signals /boom_tb/boom_synth_inst/bmg_port/DOUTA
console submit -using simulator -wait no "run"
