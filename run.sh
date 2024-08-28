cd /home/runner
export PATH=/usr/bin:/bin:/tool/pandora64/bin:/apps/vcsmx/vcs/U-2023.03-SP2//bin:/usr/local/bin
export VCS_VERSION=U-2023.03-SP2
export VCS_PATH=/apps/vcsmx/vcs/U-2023.03-SP2//bin
export LM_LICENSE_FILE=27020@10.116.0.5
export VCS_HOME=/apps/vcsmx/vcs/U-2023.03-SP2/
export HOME=/home/runner
export UVM_HOME=/apps/vcsmx/vcs/U-2023.03-SP2//etc/uvm-1.2
vcs -full64 -licqueue +incdir+$UVM_HOME/src $UVM_HOME/src/uvm.sv $UVM_HOME/src/dpi/uvm_dpi.cc -CFLAGS -DVCS '-timescale=1ns/1ns' '+vcs+flush+all' '+warn=all' '-sverilog' design.sv testbench.sv  && ./simv +vcs+lic+wait '+UVM_TESTNAME=mem_wr_rd_test'  ; echo 'Creating result.zip...' && zip -r /tmp/tmp_zip_file_123play.zip . && mv /tmp/tmp_zip_file_123play.zip result.zip