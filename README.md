# Learning OS-Dev: Boot Sector Programming & x86 Assembly

## Overview
This repo is serving as a playground for my learning of Operating System internals and x86 Assembly.
Currently, the majority of these files revolve around the basics of 16-bit x86 boot sector programming, with the aim of getting to 32-bit mode - and eventually a primative kernel.

## Progress
- [ ] Basics of 16-bit x86 Assembly
  - [x] Using BIOS inturrupt services
  - [x] Common instructions (mov, add, etc)
  - [x] Control Flow
  - [x] Functions
  - [x] The Stack
- [ ] Writing a Boot Sector
  - [x] Magic numbers
  - [x] Boot Sector Structure
    - [ ] Create a diagram for this
- [ ] Write summaries of the above


## Usage
In order to run the examples contained in this repo, you will need the [NASM assembler](https://www.nasm.us/index.php) to build the assembly into binary files, and the system emulator [QEMU](https://www.qemu.org/) to load and run the generated binary images.

### From Assembly -> Binary files
`; nasm [Assembly filename].asm -f bin -o [Assembly filename].bin`

### Run Binary with QEMU
`; qemu-system-i386 -machine pc -drive file=[Assembly filename].bin,format=raw`

## Resources
- ["Writing a Simple Operating System — from Scratch" - Nick Blundell](https://www.cs.bham.ac.uk/~exr/lectures/opsys/10_11/lectures/os-dev.pdf)
- ["Operating Systems: Three Easy Pieces" - Remzi Arpaci-Dusseau & Andrea Arpaci-Dusseau](https://pages.cs.wisc.edu/~remzi/OSTEP/)
