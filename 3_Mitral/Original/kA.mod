TITLE HH KA anomalous rectifier channel
: Implemented in Rubin and Cleland (2006) J Neurophysiology
: Parameters from Bhalla and Bower (1993) J Neurophysiology
: Adapted from /usr/local/neuron/demo/release/khhchan.mod - squid 
:   by Andrew Davison, The Babraham Institute  [Brain Res Bulletin, 2000]

NEURON {
	SUFFIX kA
	USEION k READ ek WRITE ik
	RANGE gkbar, ik, i
	GLOBAL pinf, qinf, ptau, qtau
}

UNITS {
	(mA) = (milliamp)
	(mV) = (millivolt)
}

INDEPENDENT {t FROM 0 TO 1 WITH 1 (ms)}
PARAMETER {
	v (mV)
	dt (ms)
	gkbar=.036 (mho/cm2) <0,1e9>
	ek = -70 (mV)
}
STATE {
	p q
}
ASSIGNED {
	ik (mA/cm2)
	i  (mA/cm2)
	pinf
	qinf
	ptau (ms)
	qtau (ms)
}

INITIAL {
	rates(v)
	p = pinf
	q = qinf
}

BREAKPOINT {
	SOLVE states METHOD cnexp
	ik = gkbar*p*q*(v - ek)
	i = ik
}

DERIVATIVE states {
	rates(v)
	p' = (pinf - p)/ptau
	q' = (qinf - q)/qtau
}

PROCEDURE rates(v(mV)) {
	TABLE pinf, qinf, ptau, qtau FROM -100 TO 100 WITH 200
	ptau = 1.38(ms)
	qtau = 150(ms)
	pinf = 1/(1 + exp(-(v*1(/mV) + 42)/13))
	qinf = 1/(1 + exp((v*1(/mV) + 110)/18))
}

