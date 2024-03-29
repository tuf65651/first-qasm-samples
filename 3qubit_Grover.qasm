// Name of Experiment: 3qubit_Grover v1

OPENQASM 2.0;
include "qelib1.inc";

qreg q[3];
creg c[3];

// Oracle - CCZ
h q[0];
h q[1];
h q[2];
cx q[1],q[0];
tdg q[0];
cx q[2],q[0];
t q[0];
cx q[1],q[0];
tdg q[0];
cx q[2],q[0];
t q[0];
t q[1];
cx q[2],q[1];
tdg q[1];
cx q[2],q[1];
t q[2];

// Grovers
h q[0];
h q[1];
h q[2];
x q[0];
x q[1];
x q[2];
h q[0]; // begin CCZ
h q[1];
h q[2];
cx q[1],q[0];
tdg q[0];
cx q[2],q[0];
t q[0];
cx q[1],q[0];
tdg q[0];
cx q[2],q[0];
t q[0];
t q[1];
cx q[2],q[1];
tdg q[1];
cx q[2],q[1];
t q[2]; // end CCZ
x q[0];
x q[1];
x q[2];
h q[0];
h q[1];
h q[2];

measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
