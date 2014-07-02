#===================================================================
#
# Makefile
# --------
# Makefile for building and simulating fpga_entropy
#
#
# Author: Joachim Strombergson
# Copyright (c) 2014, Secworks Sweden AB
# 
# Redistribution and use in source and binary forms, with or 
# without modification, are permitted provided that the following 
# conditions are met: 
# 
# 1. Redistributions of source code must retain the above copyright 
#    notice, this list of conditions and the following disclaimer. 
# 
# 2. Redistributions in binary form must reproduce the above copyright 
#    notice, this list of conditions and the following disclaimer in 
#    the documentation and/or other materials provided with the 
#    distribution. 
# 
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS 
# "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT 
# LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS 
# FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE 
# COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, 
# INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, 
# BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
# LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER 
# CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, 
# STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) 
# ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF 
# ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#
#===================================================================

FPGA_ENTROPY_SRC=../src/rtl/bp_osc.v ../src/rtl/fpga_entropy_core.v
TB_FPGA_ENTROPY_SRC=../src/tb/tb_fpga_entropy_core.v
TB_FPGA_ENTROPY_TARGET = fpga_entropy.sim

CC=iverilog


all: $(TB_FPGA_ENTROPY_TARGET)


$(TB_FPGA_ENTROPY_TARGET): $(CORETEST_TB_SRC) $(FPGA_ENTROPY_SRC)
	$(CC) -o $(TB_FPGA_ENTROPY_TARGET) $(TB_FPGA_ENTROPY_SRC) $(FPGA_ENTROPY_SRC)


sim: $(TB_FPGA_ENTROPY_TARGET)
	./$(TB_FPGA_ENTROPY_TARGET)


debug:
	@echo "No debug available."


clean:
	rm -f $(TB_FPGA_ENTROPY_TARGET)

#===================================================================
# EOF Makefile
#===================================================================

