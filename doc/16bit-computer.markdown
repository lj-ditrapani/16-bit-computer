<!-- Author:  Lyall Jonathan Di Trapani =========|=========|======== -->
General
-------

- 16-bit CPU
- 64 KWords = 128 KB = 1 M-bit
- 20 MHz
- 10 Million instructions per second (min)

```
    Triple ported register file
    (2 reads, 1 write per clock)
    CPLD like Control
    10 function ALU (4 control bits)

    Reg (1 clock)
    Fetch instruction (memory read)       1 clock
    Decode & Reg read & ALU & Reg write

    STR (2 clocks)
    Fetch instruction (memory read)       1 clock
    Decode & Reg read
    Memory write                          1 clock

    LOD (2 clocks)
    Fetch instruction (memory read)       1 clock
    Decode & Reg read
    Memory read & reg write               1 clock
```


Video
------------

See
<https://github.com/lj-ditrapani/16-bit-computer-video>
for details on video sub-system


I/O
-----------

See [IO Map](https://github.com/lj-ditrapani/16-bit-computer/blob/master/doc/IOmap.txt)

- Use triple buffering for outputs
- Use double buffering for inputs

```
10 Million instructions per second
  1 Million instructions per frame
    100 K instructions for I/O per frame
      10 K I/O operations per frame
         2K Network/HDD input (read)
          1 keyboard input


Words
  512 Sound out
2,048 Network I/O (1K read, 1K write)
2,048 Storage I/O (1K read, 1K write)
5,068 Video out
    1 Keyboard input (1 ASCII character per frame)
    1 Network status
    1 Enable bits
    2 Storage read/write addresses
    1 Frame interrupt vector
-----------------------------------
10,240 Words total
```
