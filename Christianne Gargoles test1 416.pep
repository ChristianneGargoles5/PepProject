;Christianne Gargoles
;Test 1
;Due 05/07/2018
br       main
bottles: .block 2 ;input needed 
box:   .block 2 ;store how many full boxes there are 
fbox:    .block 2 ; calucute total number of full boxes'shipping 
cost:    .block 2;store shipping cost of total full boxes
overcost: .block 2;calculate cost of each leftover bottles
Tcost:   .block 2; store cost of leftover bottles 

;calculates how many many full boxes you can have based on total number of input bottles;  boxes are calculated by 8/bottle.
main: Deci bottles,d ; input number of bottles
Ldwa bottles,d;load  bottle to accumulator
asra; arithmethic shift right 3 times
asra;this calculate total number of full bottles
asra 
stwa box,d ;store the value of equation from above. stored the equation is (bottle/8) 
stro totalbox,d;stores the value of the equation to the output device which is .ASCII msg1
deco box,d;traps the decimal 
ldba '\n',i;a new line command,immediately
stba charOut,d;output the calcutions of shipping cost per box.

;calculates total cost of full boxes 
deci fbox,d;input the total number of full boxes 
ldwa fbox,d;loads totalbox to accumulator
asla; arithmetic shift left 4 times to multiply by 16
asla;calculate shipping cost per box
asla 
asla
stwa cost, d;stored equation (bottle*16)
stro fullcost,d; store value of the equation to the output device in ASCII msg2
deco cost,d; traps the decimal
ldba '\n',i;a new line command,immediately
stba charOut,d;output calculation of shipping cost

;calculates the remaining 
deci overcost,d;input the overcost
ldwa overcost,d;loads overcost to accumulator
adda overcost,d;2 add accumulator 
adda overcost,d 
stwa Tcost,d;store the value equation is (overcost+overcost)
stro loosecst,d; store  the equation to the output device in ASCII msg3
deco Tcost,d;traps the decimals
ldba '\n',i;; a new line command,immediately
stba charOut,d

stop
;The 3 .ASCII messages. 
totalbox:        .ascii "Total number of full boxes = \x00"
fullcost:        .ascii "Cost of shipping of full boxes = \x00"
loosecst:        .ascii "Cost of shipping of loose boxes= \x00"
.end 
