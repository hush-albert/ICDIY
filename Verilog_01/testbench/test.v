/*
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                                                                      ;;
;;                      ialbert.net - FreeIP Dept.                      ;;
;;                                                                      ;;
;;  Title       : Verilog_01 - function module and test bench           ;;
;;  File Name   : test.v                                                ;;
;;  Schematics  : N.A.                                                  ;;
;;  Environment : EDAPlayground                                         ;;
;;  Author      : Albert Hu (mail@ialbert.net)                          ;;
;;                                                                      ;;
;;      (C) Copyright 2014, All Rights Reserved                         ;;
;;                                                                      ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
*/


// History
// 2014/8/7 20:06:40 created


// ***************************************************
// your first test bench to verify the inverter design
// ***************************************************


module  test_bench;
reg     test_in1, test_in2, test_in3;
wire    test_out;


// waveform design for test input (test_in)


initial
begin
        test_in1 = 1;
        test_in2 = 1;
        forever #10 test_in1 = !test_in1;   // 50MHz clock
end


// your inverter is in position for simulation now


  and_gate gate1( test_in1, test_in2, test_out );


initial
begin
        $dumpfile("dump.vcd");
        $dumpvars(0, gate1);
#10000  $finish;
end


endmodule
