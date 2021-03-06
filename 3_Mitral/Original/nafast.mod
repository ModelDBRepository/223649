TITLE HH fast sodium channel
: Implemented in Rubin and Cleland (2006) J Neurophysiology
: Parameters from Bhalla and Bower (1993) J Neurophysiology
: Adapted from /usr/local/neuron/demo/release/nachan.mod - squid
:   by Andrew Davison, The Babraham Institute  [Brain Res Bulletin, 2000]

NEURON {
	SUFFIX nafast
	USEION na READ ena WRITE ina
	RANGE gnabar, ina, i
	GLOBAL minf, hinf, mtau, htau
}

UNITS {
	(mA) = (milliamp)
	(mV) = (millivolt)
}

INDEPENDENT {t FROM 0 TO 1 WITH 1 (ms)}
PARAMETER {
	v (mV)
	dt (ms)
	gnabar = 0.120 (mho/cm2) <0,1e9>
	ena = 45 (mV)
}
STATE {
	m h
}
ASSIGNED {
	ina (mA/cm2)
	i   (mA/cm2)
	minf
	hinf
	mtau (ms)
	htau (ms)
}

INITIAL {
	rates(v)
	m = minf
	h = hinf
}

BREAKPOINT {
	SOLVE states METHOD cnexp
	ina = gnabar*m*m*m*h*(v - ena)
	i = ina
}

DERIVATIVE states {
	rates(v)
	m' = (minf - m)/mtau
	h' = (hinf - h)/htau
}

FUNCTION alp(v(mV),i) (/ms) {
	if (i==0) {
		alp = 0.32(/ms)*expM1(-(v *1(/mV) + 42), 4)
	}else if (i==1){
		alp = 0.128(/ms)/(exp((v *1(/mV) + 38)/18))
	}
}

FUNCTION bet(v(mV),i)(/ms) {
	if (i==0) {
		bet = 0.28(/ms)*expM1(v *1(/mV) + 15, 5)
	}else if (i==1){
		bet = 4(/ms)/(exp(-(v* 1(/mV) + 15)/5) + 1)
	}
}

FUNCTION expM1(x,y) {
	if (fabs(x/y) < 1e-6) {
		expM1 = y*(1 - x/y/2)
	}else{
		expM1 = x/(exp(x/y) - 1)
	}
}

PROCEDURE rates(v(mV)) {LOCAL a, b
	:TABLE minf, hinf, mtau, htau FROM -100 TO 100 WITH 200
	a = alp(v,0)  b=bet(v,0)
	mtau = 1/(a + b)
	minf = a/(a + b)      :::: v1/2 = -29.03 ::: k = 7.412
	a = alp(v,1)  b=bet(v,1)
	htau = 1/(a + b)
	hinf = a/(a + b)      :::: v1/2 = -33.32 ::: k = -4.041
}
