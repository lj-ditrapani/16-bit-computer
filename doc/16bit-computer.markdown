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

```
I/O
10 Million instructions per second
 1 Million instructions per frame
   100 K instructions for I/O per frame
    10 K I/O operations per frame
       5K video output
       500 sound (20 changes of 20 registers)
       4K Network/HDD access (1K each read, 1K write each)
       10 operation for keyboard input (10 key down, 10 key up)
                1 byte per action: first bit up or down,
                                   next seven = key code
                Saves up to 20 actions, anymore are dumped


Words
  512 Sound out
   10 Keyboard input (20 actions per frame/200 actions per second)
2,048 Network I/O (1K read, 1K write)
2,048 HDD or SD card I/O (1K read, 1K write)
5,068 Video out
    1 Frame interrupt enable (or 16 I/O control flags?)
    1 Frame interrupt vector
    2 Debug I/O streams
```
