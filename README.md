# PNIPAM-b-PSBMA
Branch: `model`

Content: Contains the foundational model-building tools and scripts used to construct the initial complex geometry and spatial arrangement of the nanopore system prior to the DPD simulations.
Files included: * `packmol` & `add.inp`: The Packmol executable and its input configuration script, utilized to pack the coarse-grained beads (nanopore substrate, polymer brushes, water, and ions) into the defined simulation box to reach the target system density.
`.pdb` & `.gro`: Intermediate structural coordinate files generated during the initial model building and format conversion process.
`s1.molg`: The generated initial topology and configuration file, properly formatted and ready for GALAMOST input.
`1.sh` & `xml.sh`: Shell scripts used for batch execution of the packing process and for post-processing/converting trajectory data (e.g., converting outputs to `.xml` format for visualization).
