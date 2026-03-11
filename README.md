# PNIPAM-b-PSBMA
# Data Availability for "Zwitterion-modified thermo-responsive polymers for nanopore applications: a mesoscopic simulation study"

Welcome to the data repository for this project. This repository contains the core data files used for the dissipative particle dynamics (DPD) simulations investigating the smart "switching effect" of nanopores.

To help reviewers and fellow researchers reproduce our results and intuitively observe the microscopic morphological evolution of the nanopores under different conditions, the visualization files and initial configuration building scripts are organized into separate branches corresponding to the key figures in our manuscript.

Repository Branch Structure

This repository is divided into the following main branches. Each branch contains the scripts used to build the initial configurations, as well as the final `.mol2` visualization files:

1. Branch: `Figure-2`
Content: Investigates the effect of different grafting densities on the thermo-responsive characteristics of pure PNIPAM-modified nanopores.
Files included: Initial configuration building scripts and final equilibrium `.mol2` visualization files at 323 K (above LCST) for grafting densities of 0.098, 0.114, 0.130, 0.146, and 0.163 chains·rc⁻².

2. Branch: `Figure-3`
Content: Investigates the threshold effect of grafting length on the smart switching behavior of pure PNIPAM systems.
Files included: Initial configuration building scripts and final `.mol2` visualization files at both 293 K and 323 K for grafting lengths L = 30, 40, 50, and 60, using the optimal grafting density of 0.130 chains·rc⁻².

3. Branch: `Figure-9`
Content: Investigates the pH and temperature dual-responsive conformational transitions of the zwitterion-modified PNIPAM-b-PCBMA block copolymer nanopores.
Files included: Complete `.mol2` visualization files and corresponding configuration building scripts for systems with different block ratios (from 0% to 100%) at varying temperatures (293 K and 323 K) under both neutral and highly acidic conditions. These files visually demonstrate the competitive mechanism between the steric hindrance effect caused by PCBMA protonation under acidic conditions and the hydrophobic collapse of PNIPAM at high temperatures.

File Type Descriptions

`.mol2` Visualization Files: These are the 3D structural coordinate files of the system after the DPD simulations have reached equilibrium. It is recommended to open these files using molecular visualization software such as [VMD (Visual Molecular Dynamics)](https://www.ks.uiuc.edu/Research/vmd/)  or Materials Studio to intuitively observe the spatial distribution of the polymer brushes on the inner surface of the nanopore and the open/closed state of the channel.
Configuration Building Scripts: These scripts contain the code and parameter files used to generate the initial 3D spatial topologies of the coarse-grained beads, including the PVDF nanopore substrate, polymer brushes, water beads, and counter-ions.


