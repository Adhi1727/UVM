Top Level Modules:
       top
TimeScale is 1 ns / 1 ns
Starting vcs inline pass...
6 modules and 0 UDP read.
recompiling package vcs_paramclassrepository
recompiling package _vcs_DPI_package
recompiling package uvm_pkg
recompiling module half_adder
recompiling module ha_if
recompiling module top
All of 6 modules done
rm -f _cuarc*.so _csrc*.so pre_vcsobj_*.so share_vcsobj_*.so
/bin/sh: line 1: cmp: command not found
g++ -w  -pipe -fPIC -DVCS -O -I/apps/vcsmx/vcs/X-2025.06-SP1/include     -c /apps/vcsmx/vcs/X-2025.06-SP1//etc/uvm-1.2/src/dpi/uvm_dpi.cc
gcc  -w  -pipe -fPIC -DVCS -O -I/apps/vcsmx/vcs/X-2025.06-SP1/include    -fPIC -c -o uM9F1_0x2aB.o uM9F1_0x2aB.c
if [ -x ../simv ]; then chmod a-x ../simv; fi
g++  -o ../simv      -rdynamic  -Wl,-rpath='$ORIGIN'/simv.daidir -Wl,-rpath=./simv.daidir -Wl,-rpath=/apps/vcsmx/vcs/X-2025.06-SP1/linux64/lib -L/apps/vcsmx/vcs/X-2025.06-SP1/linux64/lib  -Wl,-rpath-link=./  uvm_dpi.o   objs/amcQw_d.o  _346_archive_1.so  SIM_l.o   uM9F1_0x2aB.o   rmapats_mop.o rmapats.o rmar.o rmar_nd.o  rmar_llvm_0_1.o rmar_llvm_0_0.o            -lvirsim -lerrorinf -lsnpsmalloc -lvfs      -lvcsnew -ldistsimclient -lsimprofile -luclinative /apps/vcsmx/vcs/X-2025.06-SP1/linux64/lib/vcs_tls.o   -Wl,-whole-archive  -lvcsucli    -Wl,-no-whole-archive      ./../simv.daidir/vc_hdrs.o    /apps/vcsmx/vcs/X-2025.06-SP1/linux64/lib/vcs_save_restore_new.o -ldl  -lc -lm -lpthread -ldl 
../simv up to date
CPU time: 11.703 seconds to compile + .630 seconds to elab + 1.186 seconds to link
Chronologic VCS simulator copyright 1991-2025
Contains Synopsys proprietary information.
Compiler version X-2025.06-SP1_Full64; Runtime version X-2025.06-SP1_Full64;  Feb  4 04:59 2026
UVM_INFO /apps/vcsmx/vcs/X-2025.06-SP1//etc/uvm-1.2/src/base/uvm_root.svh(407) @ 0: reporter [UVM/RELNOTES] 
----------------------------------------------------------------
UVM-1.2.Synopsys
(C) 2007-2014 Mentor Graphics Corporation
(C) 2007-2014 Cadence Design Systems, Inc.
(C) 2006-2014 Synopsys, Inc.
(C) 2011-2013 Cypress Semiconductor Corp.
(C) 2013-2014 NVIDIA Corporation
----------------------------------------------------------------

  ***********       IMPORTANT RELEASE NOTES         ************

  You are using a version of the UVM library that has been compiled
  with `UVM_NO_DEPRECATED undefined.
  See http://www.eda.org/svdb/view.php?id=3313 for more details.

  You are using a version of the UVM library that has been compiled
  with `UVM_OBJECT_DO_NOT_NEED_CONSTRUCTOR undefined.
  See http://www.eda.org/svdb/view.php?id=3770 for more details.

      (Specify +UVM_NO_RELNOTES to turn off this notice)

UVM_INFO @ 0: reporter [RNTST] Running test test...
UVM_INFO sequencer.sv(10) @ 0: uvm_test_top.en.agn.seqr [SEQR] Sequencer is ready
UVM_INFO sequence.sv(13) @ 0: uvm_test_top.en.agn.seqr@@se [SEQ] Sequence is created
UVM_INFO scoreboard.sv(27) @ 10: uvm_test_top.en.scr [SCB] RESULT PASS! a = 1 | b = 1 | Sum = 0 | Carry = 1
UVM_INFO scoreboard.sv(27) @ 20: uvm_test_top.en.scr [SCB] RESULT PASS! a = 1 | b = 1 | Sum = 0 | Carry = 1
UVM_INFO scoreboard.sv(27) @ 30: uvm_test_top.en.scr [SCB] RESULT PASS! a = 0 | b = 1 | Sum = 1 | Carry = 0
UVM_INFO scoreboard.sv(27) @ 40: uvm_test_top.en.scr [SCB] RESULT PASS! a = 1 | b = 1 | Sum = 0 | Carry = 1
UVM_INFO scoreboard.sv(27) @ 50: uvm_test_top.en.scr [SCB] RESULT PASS! a = 1 | b = 1 | Sum = 0 | Carry = 1
UVM_INFO scoreboard.sv(27) @ 60: uvm_test_top.en.scr [SCB] RESULT PASS! a = 1 | b = 1 | Sum = 0 | Carry = 1
UVM_INFO scoreboard.sv(27) @ 70: uvm_test_top.en.scr [SCB] RESULT PASS! a = 0 | b = 1 | Sum = 1 | Carry = 0
UVM_INFO scoreboard.sv(27) @ 80: uvm_test_top.en.scr [SCB] RESULT PASS! a = 1 | b = 1 | Sum = 0 | Carry = 1
UVM_INFO scoreboard.sv(27) @ 90: uvm_test_top.en.scr [SCB] RESULT PASS! a = 1 | b = 1 | Sum = 0 | Carry = 1
UVM_INFO scoreboard.sv(27) @ 100: uvm_test_top.en.scr [SCB] RESULT PASS! a = 0 | b = 1 | Sum = 1 | Carry = 0
UVM_INFO scoreboard.sv(27) @ 110: uvm_test_top.en.scr [SCB] RESULT PASS! a = 0 | b = 1 | Sum = 1 | Carry = 0
UVM_INFO scoreboard.sv(27) @ 120: uvm_test_top.en.scr [SCB] RESULT PASS! a = 0 | b = 1 | Sum = 1 | Carry = 0
UVM_INFO scoreboard.sv(27) @ 130: uvm_test_top.en.scr [SCB] RESULT PASS! a = 0 | b = 1 | Sum = 1 | Carry = 0
UVM_INFO scoreboard.sv(27) @ 140: uvm_test_top.en.scr [SCB] RESULT PASS! a = 0 | b = 1 | Sum = 1 | Carry = 0
UVM_INFO scoreboard.sv(27) @ 150: uvm_test_top.en.scr [SCB] RESULT PASS! a = 0 | b = 1 | Sum = 1 | Carry = 0
UVM_INFO scoreboard.sv(27) @ 160: uvm_test_top.en.scr [SCB] RESULT PASS! a = 0 | b = 1 | Sum = 1 | Carry = 0
UVM_INFO scoreboard.sv(27) @ 170: uvm_test_top.en.scr [SCB] RESULT PASS! a = 0 | b = 1 | Sum = 1 | Carry = 0
UVM_INFO scoreboard.sv(27) @ 180: uvm_test_top.en.scr [SCB] RESULT PASS! a = 0 | b = 1 | Sum = 1 | Carry = 0
UVM_INFO scoreboard.sv(27) @ 190: uvm_test_top.en.scr [SCB] RESULT PASS! a = 0 | b = 1 | Sum = 1 | Carry = 0
$finish called from file "testbench.sv", line 28.
$finish at simulation time                  200
           V C S   S i m u l a t i o n   R e p o r t 
Time: 200 ns
CPU Time:      0.580 seconds;       Data structure size:   0.4Mb
