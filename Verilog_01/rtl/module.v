/*
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                                                                      ;;
;;                      ialbert.net - FreeIP Dept.                      ;;
;;                                                                      ;;
;;  Title       : Verilog_01 - function module and test bench           ;;
;;  File Name   : module.v                                              ;;
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


// **********************************************
// your first function module - a simple AND gate
// **********************************************


module  and_gate( I1, I2, O);
output  O;
input   I1, I2;


assign  O = I1 & I2;                        // here is your AND gate


endmodule
