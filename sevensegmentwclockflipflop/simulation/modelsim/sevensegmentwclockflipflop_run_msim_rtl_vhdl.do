transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/User/Desktop/Circuits/sevensegmentwclockflipflop/sete_segmentos.vhd}
vcom -93 -work work {C:/Users/User/Desktop/Circuits/sevensegmentwclockflipflop/or_5.vhd}
vcom -93 -work work {C:/Users/User/Desktop/Circuits/sevensegmentwclockflipflop/or_4.vhd}
vcom -93 -work work {C:/Users/User/Desktop/Circuits/sevensegmentwclockflipflop/or_3.vhd}
vcom -93 -work work {C:/Users/User/Desktop/Circuits/sevensegmentwclockflipflop/or_2.vhd}
vcom -93 -work work {C:/Users/User/Desktop/Circuits/sevensegmentwclockflipflop/not_1.vhd}
vcom -93 -work work {C:/Users/User/Desktop/Circuits/sevensegmentwclockflipflop/and_3.vhd}
vcom -93 -work work {C:/Users/User/Desktop/Circuits/sevensegmentwclockflipflop/and_2.vhd}
vcom -93 -work work {C:/Users/User/Desktop/Circuits/sevensegmentwclockflipflop/FlipFlopD.vhd}
vcom -93 -work work {C:/Users/User/Desktop/Circuits/sevensegmentwclockflipflop/counterFFD.vhd}
vcom -93 -work work {C:/Users/User/Desktop/Circuits/sevensegmentwclockflipflop/zeroAnove.vhd}
vcom -93 -work work {C:/Users/User/Desktop/Circuits/sevensegmentwclockflipflop/sevensegmentwclockflipflop.vhd}

