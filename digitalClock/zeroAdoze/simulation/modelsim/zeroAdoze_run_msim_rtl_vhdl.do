transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/User/Desktop/Circuits/digitalClock/zeroAdoze/resetador.vhd}
vcom -93 -work work {C:/Users/User/Desktop/Circuits/digitalClock/zeroAdoze/UnidadeContadora.vhd}
vcom -93 -work work {C:/Users/User/Desktop/Circuits/digitalClock/zeroAdoze/sete_segmentos.vhd}
vcom -93 -work work {C:/Users/User/Desktop/Circuits/digitalClock/zeroAdoze/or_5.vhd}
vcom -93 -work work {C:/Users/User/Desktop/Circuits/digitalClock/zeroAdoze/or_4.vhd}
vcom -93 -work work {C:/Users/User/Desktop/Circuits/digitalClock/zeroAdoze/or_3.vhd}
vcom -93 -work work {C:/Users/User/Desktop/Circuits/digitalClock/zeroAdoze/or_2.vhd}
vcom -93 -work work {C:/Users/User/Desktop/Circuits/digitalClock/zeroAdoze/not_1.vhd}
vcom -93 -work work {C:/Users/User/Desktop/Circuits/digitalClock/zeroAdoze/FlipFlopD.vhd}
vcom -93 -work work {C:/Users/User/Desktop/Circuits/digitalClock/zeroAdoze/counterFFD.vhd}
vcom -93 -work work {C:/Users/User/Desktop/Circuits/digitalClock/zeroAdoze/and_3.vhd}
vcom -93 -work work {C:/Users/User/Desktop/Circuits/digitalClock/zeroAdoze/and_2.vhd}
vcom -93 -work work {C:/Users/User/Desktop/Circuits/digitalClock/zeroAdoze/zeroAdoze.vhd}

