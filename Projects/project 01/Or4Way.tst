// This file is part of the materials accompanying the book 
// "The Elements of Computing Systems" by Nisan and Schocken, 
// MIT Press. Book site: www.idc.ac.il/tecs
// File name: projects/01/Or8Way.tst

load Or4Way.hdl,
output-file Or4Way.out,
compare-to Or4Way.cmp,
output-list in%B2.4.2 out%B2.1.2;

set in %B0000,
eval,
output;

set in %B1000,
eval,
output;

set in %B0100,
eval,
output;

set in %B0010,
eval,
output;

set in %B0001,
eval,
output;
