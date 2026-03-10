# PNIPAM-b-PSBMA
#Temperature setting initial file and modeling script
# Data Repository for "Zwitterion-modified thermo-responsive polymers for nanopore applications: a mesoscopic simulation study"

This repository contains the foundational models and execution scripts used for the Dissipative Particle Dynamics (DPD) simulations in our publication. 

The study investigates the temperature- and pH-responsive "switching effects" of PVDF nanopores modified with zwitterionic PNIPAM-b-PCBMA polymer brushes. All DPD simulations were performed using the GPU-accelerated software GALAMOST.

## Repository Contents

`293.molg` & `323.molg`: These are the initial topology and configuration files for the nanopore systems at 293 K and 323 K, respectively. They define the coarse-grained particle types, initial spatial coordinates, and bond connectivity for the PVDF nanopore, PNIPAM-b-PCBMA polymer brushes, water beads, and counter-ions.
`293.gala` & `323.gala`: These are the primary GALAMOST execution scripts. They contain the specific simulation parameters for running the systems at 293 K (below the LCST) and 323 K (above the LCST). This includes the temperature-specific DPD repulsion parameters (`a_ij`) , the integration time step (0.03) , total simulation steps (600,000) , and the NVT ensemble settings maintained by the Nose-Hoover thermostat.
`add.inp`: An input configuration script used during the initial modeling phase to define the geometry of the simulation box (36 × 36 × 45 r_c^3) and populate the system to maintain the target bead number density of 3.
`1.sh`: A shell script used for batch execution of the modeling steps or simulation initialization workflows in a Linux environment.
`xml.sh`: A shell script utilized for post-processing the trajectory data, such as converting the output files into `.xml` format for structural evolution observation and rendering in visualization software like VMD.

## Usage Requirements
To execute these scripts, you must have [GALAMOST](https://github.com/galamost/galamost) installed and configured on a GPU-enabled computing environment.
