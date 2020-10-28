transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {G:/My Drive/Academia/Cursos Dictados/Logica Digital/Material_VHDL_Clases/sum1bit/sum1bit.vhd}

