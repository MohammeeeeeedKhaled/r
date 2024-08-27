
_main:

;MyProject.c,5 :: 		void main() {
;MyProject.c,6 :: 		ADCON1=0110;
	MOVLW      72
	MOVWF      ADCON1+0
;MyProject.c,7 :: 		TRISB =0b00000011;TRISC=0;   TRISA=0;   TRISE=0;   TRISD=0;
	MOVLW      3
	MOVWF      TRISB+0
	CLRF       TRISC+0
	CLRF       TRISA+0
	CLRF       TRISE+0
	CLRF       TRISD+0
;MyProject.c,8 :: 		portA=0;portc=0;portE=0;portb=0;PORTD =0;
	CLRF       PORTA+0
	CLRF       PORTC+0
	CLRF       PORTE+0
	CLRF       PORTB+0
	CLRF       PORTD+0
;MyProject.c,9 :: 		GIE_bit=1;INTE_bit=1;INTEDG_bit=0;
	BSF        GIE_bit+0, BitPos(GIE_bit+0)
	BSF        INTE_bit+0, BitPos(INTE_bit+0)
	BCF        INTEDG_bit+0, BitPos(INTEDG_bit+0)
;MyProject.c,10 :: 		while(1){
L_main0:
;MyProject.c,11 :: 		c1=1;c2=5;c3=1;c4=2;
	MOVLW      1
	MOVWF      _c1+0
	MOVLW      5
	MOVWF      _c2+0
	MOVLW      1
	MOVWF      _c3+0
	MOVLW      2
	MOVWF      _c4+0
;MyProject.c,12 :: 		bol=1;
	MOVLW      1
	MOVWF      _bol+0
;MyProject.c,13 :: 		while(1){
L_main2:
;MyProject.c,14 :: 		portb.B2=1;
	BSF        PORTB+0, 2
;MyProject.c,15 :: 		if(bol){
	MOVF       _bol+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main4
;MyProject.c,16 :: 		portb.B7=1;
	BSF        PORTB+0, 7
;MyProject.c,17 :: 		}else{ portb.B6=1;}
	GOTO       L_main5
L_main4:
	BSF        PORTB+0, 6
L_main5:
;MyProject.c,18 :: 		portA=c3; portD=c4;
	MOVF       _c3+0, 0
	MOVWF      PORTA+0
	MOVF       _c4+0, 0
	MOVWF      PORTD+0
;MyProject.c,19 :: 		portE=c1; portc=c2;
	MOVF       _c1+0, 0
	MOVWF      PORTE+0
	MOVF       _c2+0, 0
	MOVWF      PORTC+0
;MyProject.c,20 :: 		dm(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	DECFSZ     R11+0, 1
	GOTO       L_main6
	NOP
	NOP
;MyProject.c,22 :: 		c2--;
	DECF       _c2+0, 1
;MyProject.c,23 :: 		c4--;
	DECF       _c4+0, 1
;MyProject.c,24 :: 		if(c1==0&&c2==0){
	MOVF       _c1+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main9
	MOVF       _c2+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main9
L__main67:
;MyProject.c,25 :: 		portE=c1; portc=c2;
	MOVF       _c1+0, 0
	MOVWF      PORTE+0
	MOVF       _c2+0, 0
	MOVWF      PORTC+0
;MyProject.c,26 :: 		portA=c3; portD=c4;
	MOVF       _c3+0, 0
	MOVWF      PORTA+0
	MOVF       _c4+0, 0
	MOVWF      PORTD+0
;MyProject.c,27 :: 		dm(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main10:
	DECFSZ     R13+0, 1
	GOTO       L_main10
	DECFSZ     R12+0, 1
	GOTO       L_main10
	DECFSZ     R11+0, 1
	GOTO       L_main10
	NOP
	NOP
;MyProject.c,28 :: 		break;
	GOTO       L_main3
;MyProject.c,29 :: 		}
L_main9:
;MyProject.c,30 :: 		if(c2==0&&c1!=0){
	MOVF       _c2+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main13
	MOVF       _c1+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_main13
L__main66:
;MyProject.c,32 :: 		portE=c1; portc=c2;
	MOVF       _c1+0, 0
	MOVWF      PORTE+0
	MOVF       _c2+0, 0
	MOVWF      PORTC+0
;MyProject.c,33 :: 		portA=c3; portD=c4;
	MOVF       _c3+0, 0
	MOVWF      PORTA+0
	MOVF       _c4+0, 0
	MOVWF      PORTD+0
;MyProject.c,34 :: 		c4--;
	DECF       _c4+0, 1
;MyProject.c,35 :: 		dm(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main14:
	DECFSZ     R13+0, 1
	GOTO       L_main14
	DECFSZ     R12+0, 1
	GOTO       L_main14
	DECFSZ     R11+0, 1
	GOTO       L_main14
	NOP
	NOP
;MyProject.c,36 :: 		c1--;
	DECF       _c1+0, 1
;MyProject.c,37 :: 		c2=9;
	MOVLW      9
	MOVWF      _c2+0
;MyProject.c,38 :: 		}
L_main13:
;MyProject.c,39 :: 		if(c4==0&&c3!=0){
	MOVF       _c4+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main17
	MOVF       _c3+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_main17
L__main65:
;MyProject.c,41 :: 		portA=c3; portD=c4;
	MOVF       _c3+0, 0
	MOVWF      PORTA+0
	MOVF       _c4+0, 0
	MOVWF      PORTD+0
;MyProject.c,42 :: 		portE=c1; portc=c2;
	MOVF       _c1+0, 0
	MOVWF      PORTE+0
	MOVF       _c2+0, 0
	MOVWF      PORTC+0
;MyProject.c,43 :: 		c2--;
	DECF       _c2+0, 1
;MyProject.c,44 :: 		dm(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main18:
	DECFSZ     R13+0, 1
	GOTO       L_main18
	DECFSZ     R12+0, 1
	GOTO       L_main18
	DECFSZ     R11+0, 1
	GOTO       L_main18
	NOP
	NOP
;MyProject.c,45 :: 		c3--;
	DECF       _c3+0, 1
;MyProject.c,46 :: 		c4=9;
	MOVLW      9
	MOVWF      _c4+0
;MyProject.c,48 :: 		}
L_main17:
;MyProject.c,49 :: 		if(c3==0 &&c4==0){
	MOVF       _c3+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main21
	MOVF       _c4+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main21
L__main64:
;MyProject.c,50 :: 		portE=c1; portc=c2;
	MOVF       _c1+0, 0
	MOVWF      PORTE+0
	MOVF       _c2+0, 0
	MOVWF      PORTC+0
;MyProject.c,51 :: 		portA=c3; portD=c4;
	MOVF       _c3+0, 0
	MOVWF      PORTA+0
	MOVF       _c4+0, 0
	MOVWF      PORTD+0
;MyProject.c,52 :: 		dm(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main22:
	DECFSZ     R13+0, 1
	GOTO       L_main22
	DECFSZ     R12+0, 1
	GOTO       L_main22
	DECFSZ     R11+0, 1
	GOTO       L_main22
	NOP
	NOP
;MyProject.c,53 :: 		c3=c1;c4=c2;
	MOVF       _c1+0, 0
	MOVWF      _c3+0
	MOVF       _c2+0, 0
	MOVWF      _c4+0
;MyProject.c,54 :: 		portb.B7=0;
	BCF        PORTB+0, 7
;MyProject.c,56 :: 		bol=0;
	CLRF       _bol+0
;MyProject.c,57 :: 		}
L_main21:
;MyProject.c,59 :: 		}
	GOTO       L_main2
L_main3:
;MyProject.c,60 :: 		portb.B6=0;
	BCF        PORTB+0, 6
;MyProject.c,61 :: 		portb.B2=0;
	BCF        PORTB+0, 2
;MyProject.c,62 :: 		c1=2;c2=0;c3=2;c4=3;
	MOVLW      2
	MOVWF      _c1+0
	CLRF       _c2+0
	MOVLW      2
	MOVWF      _c3+0
	MOVLW      3
	MOVWF      _c4+0
;MyProject.c,63 :: 		flag=1;
	MOVLW      1
	MOVWF      _flag+0
;MyProject.c,64 :: 		while(1){
L_main23:
;MyProject.c,65 :: 		portb.B5=1;
	BSF        PORTB+0, 5
;MyProject.c,66 :: 		if(flag){portb.B4=1;}
	MOVF       _flag+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main25
	BSF        PORTB+0, 4
	GOTO       L_main26
L_main25:
;MyProject.c,67 :: 		else{ portb.B3=1;}
	BSF        PORTB+0, 3
L_main26:
;MyProject.c,68 :: 		portA=c3; portD=c4;
	MOVF       _c3+0, 0
	MOVWF      PORTA+0
	MOVF       _c4+0, 0
	MOVWF      PORTD+0
;MyProject.c,69 :: 		portE=c1; portc=c2;
	MOVF       _c1+0, 0
	MOVWF      PORTE+0
	MOVF       _c2+0, 0
	MOVWF      PORTC+0
;MyProject.c,71 :: 		dm(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main27:
	DECFSZ     R13+0, 1
	GOTO       L_main27
	DECFSZ     R12+0, 1
	GOTO       L_main27
	DECFSZ     R11+0, 1
	GOTO       L_main27
	NOP
	NOP
;MyProject.c,72 :: 		if(c2==0&&c1!=0){
	MOVF       _c2+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main30
	MOVF       _c1+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_main30
L__main63:
;MyProject.c,73 :: 		c1--;
	DECF       _c1+0, 1
;MyProject.c,74 :: 		c2=9;  c4--;
	MOVLW      9
	MOVWF      _c2+0
	DECF       _c4+0, 1
;MyProject.c,75 :: 		portE=c1; portc=c2;
	MOVF       _c1+0, 0
	MOVWF      PORTE+0
	MOVLW      9
	MOVWF      PORTC+0
;MyProject.c,76 :: 		portA=c3; portD=c4;
	MOVF       _c3+0, 0
	MOVWF      PORTA+0
	MOVF       _c4+0, 0
	MOVWF      PORTD+0
;MyProject.c,78 :: 		dm(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main31:
	DECFSZ     R13+0, 1
	GOTO       L_main31
	DECFSZ     R12+0, 1
	GOTO       L_main31
	DECFSZ     R11+0, 1
	GOTO       L_main31
	NOP
	NOP
;MyProject.c,80 :: 		}
L_main30:
;MyProject.c,81 :: 		c2--;
	DECF       _c2+0, 1
;MyProject.c,82 :: 		c4--;
	DECF       _c4+0, 1
;MyProject.c,83 :: 		if(c1==0&&c2==0){
	MOVF       _c1+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main34
	MOVF       _c2+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main34
L__main62:
;MyProject.c,84 :: 		portE=c1; portc=c2;
	MOVF       _c1+0, 0
	MOVWF      PORTE+0
	MOVF       _c2+0, 0
	MOVWF      PORTC+0
;MyProject.c,85 :: 		portA=c3; portD=c4;
	MOVF       _c3+0, 0
	MOVWF      PORTA+0
	MOVF       _c4+0, 0
	MOVWF      PORTD+0
;MyProject.c,86 :: 		dm(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main35:
	DECFSZ     R13+0, 1
	GOTO       L_main35
	DECFSZ     R12+0, 1
	GOTO       L_main35
	DECFSZ     R11+0, 1
	GOTO       L_main35
	NOP
	NOP
;MyProject.c,87 :: 		c1=c3;c2=c4;
	MOVF       _c3+0, 0
	MOVWF      _c1+0
	MOVF       _c4+0, 0
	MOVWF      _c2+0
;MyProject.c,88 :: 		portb.B4=0;
	BCF        PORTB+0, 4
;MyProject.c,90 :: 		flag=0;
	CLRF       _flag+0
;MyProject.c,91 :: 		}
L_main34:
;MyProject.c,93 :: 		if(c4==0&&c3!=0){
	MOVF       _c4+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main38
	MOVF       _c3+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_main38
L__main61:
;MyProject.c,95 :: 		portA=c3; portD=c4;
	MOVF       _c3+0, 0
	MOVWF      PORTA+0
	MOVF       _c4+0, 0
	MOVWF      PORTD+0
;MyProject.c,96 :: 		portE=c1; portc=c2;
	MOVF       _c1+0, 0
	MOVWF      PORTE+0
	MOVF       _c2+0, 0
	MOVWF      PORTC+0
;MyProject.c,97 :: 		c2--;
	DECF       _c2+0, 1
;MyProject.c,98 :: 		dm(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main39:
	DECFSZ     R13+0, 1
	GOTO       L_main39
	DECFSZ     R12+0, 1
	GOTO       L_main39
	DECFSZ     R11+0, 1
	GOTO       L_main39
	NOP
	NOP
;MyProject.c,99 :: 		c3--;
	DECF       _c3+0, 1
;MyProject.c,100 :: 		c4=9;
	MOVLW      9
	MOVWF      _c4+0
;MyProject.c,102 :: 		}
L_main38:
;MyProject.c,103 :: 		if(c3==0 &&c4==0){
	MOVF       _c3+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main42
	MOVF       _c4+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main42
L__main60:
;MyProject.c,104 :: 		portE=c1; portc=c2;
	MOVF       _c1+0, 0
	MOVWF      PORTE+0
	MOVF       _c2+0, 0
	MOVWF      PORTC+0
;MyProject.c,105 :: 		portA=c3; portD=c4;
	MOVF       _c3+0, 0
	MOVWF      PORTA+0
	MOVF       _c4+0, 0
	MOVWF      PORTD+0
;MyProject.c,106 :: 		dm(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main43:
	DECFSZ     R13+0, 1
	GOTO       L_main43
	DECFSZ     R12+0, 1
	GOTO       L_main43
	DECFSZ     R11+0, 1
	GOTO       L_main43
	NOP
	NOP
;MyProject.c,107 :: 		break;
	GOTO       L_main24
;MyProject.c,108 :: 		}
L_main42:
;MyProject.c,110 :: 		}
	GOTO       L_main23
L_main24:
;MyProject.c,112 :: 		portb.B5=0;
	BCF        PORTB+0, 5
;MyProject.c,113 :: 		portb.B3=0;
	BCF        PORTB+0, 3
;MyProject.c,114 :: 		}
	GOTO       L_main0
;MyProject.c,115 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

_interrupt:
	MOVWF      R15+0
	SWAPF      STATUS+0, 0
	CLRF       STATUS+0
	MOVWF      ___saveSTATUS+0
	MOVF       PCLATH+0, 0
	MOVWF      ___savePCLATH+0
	CLRF       PCLATH+0

;MyProject.c,116 :: 		void interrupt(){
;MyProject.c,117 :: 		portA=0;portc=0;portE=0;portb=0;PORTD =0;
	CLRF       PORTA+0
	CLRF       PORTC+0
	CLRF       PORTE+0
	CLRF       PORTB+0
	CLRF       PORTD+0
;MyProject.c,118 :: 		for(;i>=0;i--){
L_interrupt44:
	MOVLW      0
	SUBWF      _i+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_interrupt45
;MyProject.c,119 :: 		portB.B6=1;
	BSF        PORTB+0, 6
;MyProject.c,120 :: 		portB.B3=1;
	BSF        PORTB+0, 3
;MyProject.c,121 :: 		portc=i;
	MOVF       _i+0, 0
	MOVWF      PORTC+0
;MyProject.c,122 :: 		portd=i;
	MOVF       _i+0, 0
	MOVWF      PORTD+0
;MyProject.c,123 :: 		dm(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_interrupt47:
	DECFSZ     R13+0, 1
	GOTO       L_interrupt47
	DECFSZ     R12+0, 1
	GOTO       L_interrupt47
	DECFSZ     R11+0, 1
	GOTO       L_interrupt47
	NOP
	NOP
;MyProject.c,124 :: 		if(portB.B0==1){break;}
	BTFSS      PORTB+0, 0
	GOTO       L_interrupt48
	GOTO       L_interrupt45
L_interrupt48:
;MyProject.c,125 :: 		if(i==0){i=3; break;}
	MOVF       _i+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_interrupt49
	MOVLW      3
	MOVWF      _i+0
	GOTO       L_interrupt45
L_interrupt49:
;MyProject.c,118 :: 		for(;i>=0;i--){
	DECF       _i+0, 1
;MyProject.c,126 :: 		}
	GOTO       L_interrupt44
L_interrupt45:
;MyProject.c,127 :: 		if(INTF_bit==1) {
	BTFSS      INTF_bit+0, BitPos(INTF_bit+0)
	GOTO       L_interrupt50
;MyProject.c,130 :: 		while(1){
L_interrupt51:
;MyProject.c,131 :: 		while(portB.B1==1){   //west
L_interrupt53:
	BTFSS      PORTB+0, 1
	GOTO       L_interrupt54
;MyProject.c,132 :: 		portB.B4=1;
	BSF        PORTB+0, 4
;MyProject.c,133 :: 		portB.B5=1;
	BSF        PORTB+0, 5
;MyProject.c,134 :: 		portB.B2=0;
	BCF        PORTB+0, 2
;MyProject.c,135 :: 		portB.B7=0;
	BCF        PORTB+0, 7
;MyProject.c,136 :: 		portB.B6=0;
	BCF        PORTB+0, 6
;MyProject.c,137 :: 		portB.B3=0;
	BCF        PORTB+0, 3
;MyProject.c,138 :: 		if(portB.B0==1){break;}
	BTFSS      PORTB+0, 0
	GOTO       L_interrupt55
	GOTO       L_interrupt54
L_interrupt55:
;MyProject.c,139 :: 		}
	GOTO       L_interrupt53
L_interrupt54:
;MyProject.c,140 :: 		while(portB.B1==0){ //south
L_interrupt56:
	BTFSC      PORTB+0, 1
	GOTO       L_interrupt57
;MyProject.c,141 :: 		portB.B2=1;
	BSF        PORTB+0, 2
;MyProject.c,142 :: 		portB.B7=1;
	BSF        PORTB+0, 7
;MyProject.c,143 :: 		portB.B4=0;
	BCF        PORTB+0, 4
;MyProject.c,144 :: 		portB.B5=0;
	BCF        PORTB+0, 5
;MyProject.c,145 :: 		portB.B6=0;
	BCF        PORTB+0, 6
;MyProject.c,146 :: 		portB.B3=0;
	BCF        PORTB+0, 3
;MyProject.c,147 :: 		if(portB.B0==1){break;}
	BTFSS      PORTB+0, 0
	GOTO       L_interrupt58
	GOTO       L_interrupt57
L_interrupt58:
;MyProject.c,148 :: 		}
	GOTO       L_interrupt56
L_interrupt57:
;MyProject.c,149 :: 		if(portB.B0==1){break;}
	BTFSS      PORTB+0, 0
	GOTO       L_interrupt59
	GOTO       L_interrupt52
L_interrupt59:
;MyProject.c,151 :: 		}
	GOTO       L_interrupt51
L_interrupt52:
;MyProject.c,152 :: 		portB.B4=0;
	BCF        PORTB+0, 4
;MyProject.c,153 :: 		portB.B5=0;
	BCF        PORTB+0, 5
;MyProject.c,154 :: 		portB.B2=0;
	BCF        PORTB+0, 2
;MyProject.c,155 :: 		portB.B7=0;
	BCF        PORTB+0, 7
;MyProject.c,156 :: 		portB.B6=0;
	BCF        PORTB+0, 6
;MyProject.c,157 :: 		portB.B3=0;
	BCF        PORTB+0, 3
;MyProject.c,158 :: 		INTF_bit=0;
	BCF        INTF_bit+0, BitPos(INTF_bit+0)
;MyProject.c,159 :: 		}
L_interrupt50:
;MyProject.c,161 :: 		}
L_end_interrupt:
L__interrupt70:
	MOVF       ___savePCLATH+0, 0
	MOVWF      PCLATH+0
	SWAPF      ___saveSTATUS+0, 0
	MOVWF      STATUS+0
	SWAPF      R15+0, 1
	SWAPF      R15+0, 0
	RETFIE
; end of _interrupt
