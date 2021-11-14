Module Current Measurer (MCM)
=============================

This is a simple, inexpensive, and easy-to-build Eurorack module designed to measure the current used by other Eurorack modules. It uses some readily available electronics modules to make assembly easier. I made it as practice for my PCB and module design skills, and because I realized I really wanted something like this at about the same time I discovered cheap INA3221 modules on Aliexpress.

The Joranalogue Test 3 is a similar module and a much better one than this in almost every way, so I highly recommend that you use that one instead of this. The Test 3 does not rely on the might-no-longer-be-available electronics modules that the MCM relies on. The Test 3 has a nice aluminum panel. The Test 3 is made by an experience (and really good!) module designer. The Test 3 does not have all the exposed solder connections that the MCM has. 

BOM
---

| Qty | Part | (Mouser?) Part Number | Designator(s) |
| --- | ---- | --------------------- | ------------- |
| 2 | 2x8 shrouded male header, 2.54mm pitch | ? | J1, J2 |
| 1 | 2x6 male header, 2.54mm pitch | ? | J3 |
| 1 | 2x6 female header, 2.54mm pitch | ? | J4 |
| 1 | 1x4 male header, 2.54mm pitch | ? | J5 |
| 1 | 1x4 female header, 2.54mm pitch | ? | J6 |
| 1 | 1x2 male header, 2.54mm pitch | ? | J7 |
| 1 | 1x2 female header, 2.54mm pitch | ? | J8 |
| 1 | Arduino Nano with male headers attached | ? | A1 |
| 1 | L7805 5V regulator | ? | U1 |
| 1 | INA3221 module **(see note below!)** | ? | U3 |
| 1 | 6mm pushbutton | ? | SW1 |
| 1 | SSD1306 I2C OLED Module (0.96") | ? | U2 |
| 5 | M3 spacers (how many inches/mm?) and screws, for holding the boards together | ? | n/a |
| 2 | M2 spacers (how many inches/mm?) and screws, for the the bottom holes on the OLED module | ? | n/a |
| 4 | M3 screws, for holding the module in your case | ? | n/a |

### INA3221 Module Details

You **need** to use a certain kind, otherwise it won't be able to measure the power correctly AND it'll short out your power!

**details TBA**

### Header Details

Please note that you do not need to buy headers of the exact length noted here. Instead it usually makes sense to buy longer headers (like 40 pin headers) and then break them as needed. Female headers don't usually break as cleanly as the male headers but it's not too bad.

For female headers, you'll loose a pin where you break them. I usually pull that pin out to mark where I want the break and to make it easier. I also usually score/saw a bit into the area I want to break with a knife.

The only (not shrouded) header I'd strongly recommend ordering in the exact size specified is J4, the Female 2x6 header, 2.54mm pitch. 2-wide female headers aren't easy to break cleanly. If you have a saw to saw through, go for it. Otherwise, order a 2x6 female header, or use two 1x6 headers that you've broken on your own.


Build Notes
-----------

- There are components on both sides of both boards, so be sure you're putting each component in the side that has a silkscreen for that component.

- On the main board, solder U1, C1, and C2 first since it's easier to solder them before the female headers for the Arduino Nano get soldered.

- You may also want to solder J3 first for the same reason noted above, but if you do, please make sure it's soldered in straight. This will make connecting the boards much easier.

- I think it's easiest to save J4, J5, J6, J7, and J8 (and maybe J3) until last. If you save these until last, you can put them in the boards, connect the boards together, and use the M3 spacers to hold the boards together while you solder the connectors.

- The orientation of SW1 doesn't matter, as long as it fits right. There should only be two ways that it fits, and they should be 180 degrees from each other.

- Be sure to line up the keyed headers J1 and J2 so that the key is on the side it appears on on the silkscreen.

- The VIN pin should normally be unpopulated (nothing put in that hole). There is an advanced mod that can be done that uses the VIN (see Advanced Notes below).

- When programming the Arduino Nano, be sure to unplug it from the module. Or if you're soldering it directly to the board (not recommended), program it before you solder it. See notes about programming the Arduino Nano below in the Programming Notes section.

- When finished building, it's **highly recommended** that you cover up all the exposed solder points on the front panel in order to avoid accidental shorts. The best way to do this is with a nonconductive silicon coating **(is that the right term?)** or gluing something nonconductive over it (like a piece of wood with indentations to allow it to fit snuggly.) A less-good but probably still OK method is to cover the exposed solder points with nail polish.


Programming Notes
-----------------

- The Arduino Nano needs to be programmed in order for the module to work.

- When programming the Arduino Nano, be sure to unplug it from the module. Or if you're soldering it directly to the board (not recommended), program it before you solder it.

- how to program **[tba]**


Usage Notes
-----------

- Only plug and unplug modules when the rack is powered off!

- There isn't a whole lot to the usage. Just plug your module in to the power plug on the front panel, turn your rack on, and the screen shows how much current the module uses on each rail.

- The CV and Gate buses are _not_ connected.

- The screen goes to sleep after X minutes. Press the button to wake the screen.


Advanced Notes
--------------

- You can use the Arduino Nano's onboard voltage regulator directly by omitting U1, C1, and C2 and then connecting the -12V pad of U1 to the VIN pad (near J3) using an insulated wire. (Be sure not to put the wire on top of the other pads near VIN that you'll need to solder.) **This is as-yet untested.** I'm not exactly sure how much current the OLED and INA3221 modules use... It might be a fine amount to use the Arduino's regulator, or it might be too much. I'll update this note when/if I figure it out.

- You can change the code to suit your needs. It's not too complex, so if you have any experience, you should be able to figure out what it's doing. I'm not sure how you might want to change it though... Maybe you want to change the time it takes before the screen sleeps? Or maybe you want to change how it displays info? Or maybe you want to program it so you can play a one-button game on this module? Go for it! But please be aware that due to the nature of this module's design, there's not a lot of other things you can make it do. (Though, now that I'm thinking about it, if you replaced the INA3221 module with something custom that speaks I2C there might be some use, maybe?)

- You don't _have_ to use a 0.96" screen. It might be fun to use a different size. Just make sure the I2C pins match up right (check the KiCad files if you need to).


