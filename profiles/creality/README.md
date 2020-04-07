# Creality CR10-s Profile

This profile has been successfully used to print stacks of the v18 shield as detaild in the `openscad/README.md` document.

The profile settings are justified as follows, and if you can re-create successful results on other printers I encourage you to add your printer profile as well:

* **PLA** - Haven't tried PETG but I hear it works well, these settings probably won't work for it.
* **1.0mm nozzle** - I wanted a larger nozzle than half the width of the walls
* **0.8mm line width** - With the larger nozzle we can decrease the line width, increase the flow, and hope some of the "slop" merges the walls
* **0.5mm layer height** - Half the diameter of the nozzle
* **0.2mm initial layer height** - Print the first layer thinner so it's easier to remove the lily pads
* **20% skin overlap percentage** - Allow for the walls to overlap one another
* **107% flow** - Extrude material at 107% of what is otherwise calculated, again hoping to merge the walls
* **217 degree hot end temperature (Hatchbox PLA)** - Hotter than usual to help with de-lamination
* **50mm/s print speed** - Slower for more consistent prints
* **No supports** - The model doesn't require any supports
* **No plate adhesion patterns (skirt, brim, etc)** - Lily pads are provided, so no additional adhesion is required
* **Retraction enabled** - Definitely want to retract between jumps, as this configuration already results in a lot of stringing
* **8mm retraction distance** - Retract a lot to help with stringing
* **45mm/s retraction speed** - Retract quickly too
* **Randomized Z seam alignment** - This configuration on a CR-10s produces noticable problems at the Z seam, so best to distribute those around the print