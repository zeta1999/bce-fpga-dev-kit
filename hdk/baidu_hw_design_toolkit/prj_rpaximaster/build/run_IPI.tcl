# This script will generat the project and run synthesis and implementation.
# This script should be run from a vivado instance where this script is
# located   "vivado -source run.tcl"

# Setup the variables and settings needed for the project.
source scripts/step_00_setup.tcl

# Create the project.
source scripts/step_01_createProject_IPI.tcl

# Run Synthesis of the PR region.
source scripts/step_02_synth_rp_ver2.tcl

# Run place and route of static and PR region
source scripts/step_03_impl_ver2.tcl

# Run pr_verify between ver1 and ver2 .dcp files. This is a check to ensure
# HW compatabilty.
source scripts/step_04_prVerify.tcl

