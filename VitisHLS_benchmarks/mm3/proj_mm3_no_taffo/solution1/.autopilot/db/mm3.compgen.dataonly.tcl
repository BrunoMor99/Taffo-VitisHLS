# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
A { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 16
	offset_end 27
}
B { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 28
	offset_end 39
}
C { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 40
	offset_end 51
}
D { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 52
	offset_end 63
}
E { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 64
	offset_end 75
}
F { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 76
	offset_end 87
}
G { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 88
	offset_end 99
}
}
dict set axilite_register_dict control $port_control

