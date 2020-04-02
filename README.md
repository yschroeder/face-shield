# Print Face Shields _the fast way_
Some files and documentation on how to print the Prusa Face Shield really fast.

## Disclaimer

These design files are provided "AS IS" WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied, including, without limitation, any warranties or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE.

This not a medical device. Consider it a Halloween constume! It is neither certified nor fit for any purpose.

## TL;DR

* Use `PrusaSlicer`
* Set all speeds (except for `Support material`, `Bridges`, `Gap fill`, and `First layer speed`) to your `Travel` speed. The speeds in reality are limited by the slicer automatically by the `Max. Volumetric Speed` of the filament. So the printer will not print that fast, but as fast as possible.
* Set the `Max. Volumetric Speed` of the filament to set the real print speed. With a 0.4 mm nozzle, start at 8 mm³/s, increase to find the maximum of your printer. 17 mm³/s work for a E3D V6 with 0.8mm nozzle.
* Set 0% infill
* Set 0.87 mm extrusion width when using the `stl/Covid-19 Shield v10.stl` model
* If the extruder skips steps (loud clacking noise), lower the `Max. Volumetric Speed`. Or try to increase the nozzle temp, so the filament melts faster.

## Frequently Asked Questions

Q: That `Prusa Face Shield RC3` prints so slow and the virus is spreading exponentially! How can we be faster?

A: Good point! This is exactly the purpose of this guide/repository. I will talk you through all the important things to consider when you want to print fast.

Q: Is your improved version strong enough? [Josef Prusa said on Twitter](https://twitter.com/josefprusa/status/1242931010641244161), that we should not change the design, because it needs to be beefy.

A: Actually, I don't know. Josef Prusa was not specific on why it was designed the way it was. I think the updated version is also good, it might not be as rigid, instead it is more flexible. If you think the improved version is not strong enough, there are other options. If you want to be sure, print `stl/covid19_headband_rc3_no_text v1.stl`. That version is the orignal one without the text, so it prints a bit faster while being exactly as strong and beefy.

Take a look [here](quality_control.md) to see how you can abuse the part without breaking.

Q: How much faster can we get?

A: Here are some expected printing times calculated by `PrusaSlicer` (for a Prusa i3 MK2.5 printing PETG):

* original file with `0.20mm SPEED` settings (one of the default profiles): 3:17h
* original file with settings included in `covid19_headband_rc3_1pcs.3mf` from original web page: 2:36h
* `stl/covid19_headband_rc3_no_text v1.stl` with `0.20mm SPEED` settings (one of the default profiles): 3:12h
* `stl/Covid-19 Shield v10.stl` with optimized settings: 0:43h
* `stl/Covid-19 Shield v10.stl` with optimized settings and a 0.8mm nozzle: 0:36h
* `stl/Covid-19 Shield v18.stl` with optimized settings and a 0.8mm nozzle: 0:31h

Q: I want to print overnight and do not want to get the done print every hour or so.

A: You are in luck, there is a stackable version from 2 to 9 parts. It is easily printable with a 0.4mm nozzle in about an hour per headband. Config for Slic3r: `layer: 0.25mm, all speeds to 150mm/s, bridging speed to 50mm/s, gap fill to 0mm/s, PLA, enable detect bridging perimeters`.

Q: I am using Cura to slice my STls, can you provide a guide for Cura?

A: I am afraid that at this point, I can only provide a guide for `PrusaSlicer`. By the way: Did you know that `PrusaSlicer 2.2` supports the `Ender 3` out of the box? You might want to try that!

Q: Can you provide a 888 version for A4 sheets?

A: Short answer: Good idea, a hospital also asked us for wider shields, so we did a prototype of this. Our results were mediocre at best, thus we discarded the idea and focused on the `v18` instead. Long answer: 888 punches are not close to the edge, the sheet will not bend properly around the printed part. You could solve this with extra hooks that catch the sheet at the ends. However, this would not work with thick sheets (0.8 mm) which are currently easy to buy. The wider design needs other struts, our prototype did not bend correctly so the sheet was inpossible to get on (again, 0.8 mm). We do not want to encourage you to use laser printer A4 clear sheets or laminating film! Users reported that you get headaches and vertigo after longer use. Also you cannot work on small things (dentist, stitch a wound). Especially the laminating film has bad optical properties. Further, production of injection molded parts for the original Prusa design is ramping up and sheets for the Prusa design will become common by then. Other hole layouts would be incompatible. Lastly, we found that a 297 mm wide sheet from 0.8 mm PETG is too heavy and uncomfortable. I hope these are enough reasons to not make a A4/888 version.

Q: How do I know my print is sturdy enough?

A: Look into the [Quality Control](quality_control.md) document, there we provide some hints how your part should look like, or not look like.

Q: I guess my part failed the quality control, what can I do?

A: The [Quality Control](quality_control.md) document also gives hints on what to change. Look into it again.

## Which model to print?

This repository contains multiple models that you can choose from. Let me introduce them to you:

### `stl/covid19_headband_rc3_no_text v1.stl`
This a remix of the original [Prusa Face Shield RC3](https://www.prusaprinters.org/prints/25857-prusa-face-shield). I removed the text and indents from it as it slows down printing. Otherwise, this is exactly the same as the original.


### `stl/Covid-19 Shield v18.stl` and `stl/Covid-19 Shield v10.stl`
These are versions that I designed myself. All the relevant features have the same geometry as the original Prusa version. However, the wall thickness is reduced from 2.5 mm to 1.67 mm. This makes it possible to print it very fast, but it gets more flexible (maybe this is not even a downside). The guide below uses this model.

If you have problems with layer adhesion, try `stl/Covid-19 Shield v18 Lily.stl`. It has lily pads at crucial points to help with adhesion. Just remove them with side cutters at the end.

If you want to print for longer durations (e.g. over night), you can try the stacked versions. Look into `stl/stacks`. We have stacks from 2 to 9 parts. Start with a small stack and check if it prints well on your machine and that you can split the parts afterwards!

**ATTENTION: Make sure the two perimeters stick together well! If they don't, the finished part will be extremely weak! You can try to increase the extrusion width even further (e.g. 1.0 mm) or increase the extrusion multiplier. If you cannot manage to print parts where the two wall stick to each other, print the v10 or original RC3 instead!**

### `stl/Covid-19 Shield 2.5mm v2.stl`
If you think the above version is too flimsy/flexible you can go with this one. It has the same thickness as the original from Prusa. It has a constant wall thickness of 2.5 mm.

Note: This a sturdy version of the `v10`. I will not provide a sturdy version of `v18`, as the `v18` is sturdy enough.

### `stl/Bottom Reinforcement fast MK2 v3.stl`
This is an updated version of the original bottom reinforcement part from the Prusa shield. It has no holes and constant wall thickness of 1.67 mm as well. The original one has a 1 mm gap for the plastic sheet. This one has only 0.8 mm for a tighter fit. Make sure you plastic sheets fit into this before starting mass production!

### `stl/Bottom Reinforcement light v10.stl`
This alternative to the original bottom reinforcement part prints much faster (I can print 20 in 53 minutes). It works for all sheet thicknessnes, 0.25mm, 0.5mm, and 0.75mm were already tested successfully. If you are unsure which bottom part you should print, choose this one!

Thanks to Hackbroetchen for the idea in his original design: https://www.prusaprinters.org/prints/27801-easy-and-fast-bottom_reinforcement-alternative

## Print Settings

Overall, the model we want to print is pretty simple. We do not want it to look super nice, it needs to be functional. There is basically one parameter that limits your maximum print speed: `Max. Volumetric Speed`. This parameter is defined in `mm³/s` (cubic millimeters per second) and tells `PrusaSlicer` the maximum amount of material your hotend is able to melt per second. The exact value for this depends on your hotend, nozzle size, material, print temperature, extruder gears... So you need to experiment with this a bit. In the end it boils down to this: You want your printer to extrude the maximum amount of material _all the time_. Luckily, you don't strictly need a large nozzle to achive this (but it helps). Even printers with 0.4 mm nozzles can reach their `Max. Volumetric Speed`.

There are some types of features that slow down your 3D printer. These includes gap filling small holes (or thin spaces between narrow outer perimeters), sharp turns of the printing direction and infill (which is basically sharp turns of the printing direction all the time). If you manage to print your model by only printing perimeters you can increase your print speed a lot!

The following picture shows infill (dark red) and gap fill (white). Both are slow to print.
![Gap Fill and Infill][gap_fill_and_infill]

The following picture shows a model that only consists of a single perimeter running all around the model (creating two extrusion lines). This is much faster to print (and also gives a very nice surface!).
![Only Perimeters][only_perimeters]

How can you achive this?

First, you need a model with a constant wall width and you need to know this width. The model `stl/Covid-19 Shield v18.stl` is designed to have the exact same wall thickness of 1.67 mm everywhere. If you manage that your perimeters exactly add up to 1.67 mm, no slow gap filling or infill is needed.

Second, you need to set you extrusion width correctly. Luckily, `PrusaSlicer` can help you with this. It has a function that tells you the optimal wall thickness of your model for thin wall, see the following picture:
![Thin Wall Thickness][thin_wall_thickness]

Here it says that the optimal thin wall thickness is 1.68 mm for two lines and 3.29 mm for 4 lines. 1.68 mm is very close to 1.67mm, so this is correctly configured! This value is influenced by the `Layer height` and the extrusion width for `Perimeters` and `External perimeters`. An extrusion width of 0.87 mm and a layer height of 0.3mm are used here for a 0.4 mm nozzle. Yes, you can actually print 0.87 mm width with a 0.4 mm nozzle (at least with an E3D nozzle). This [YouTube video by CNCKitchen](https://www.youtube.com/watch?v=9YaJ0wSKKHA) gives more info if you are interested.

Ok, we now have a model that is designed for this kind of print and a correct perimeter width. Let's talk about print speed. Rembember the `Max. Volumetric Speed`? This is your print speed. Configure all speeds (except for `Support material`, `Bridges`, and `Gap fill` and `First layer speed`) to your `Travel` speed. Yes, do this. You won't reach these speeds anyway (and if you actually do, can I have your printer please?). Now set the `Max. Volumetric Speed` in `Filament Settings/Advanced` to a low starting value. 8 mm³/s is a good starting point.

Let's quickly go through some other settings that can increase your print speed: The model we are printing does not need any infill. You can safely set it to 0%. Only the hooks for the rubber band would get some and they don't need it. Also, you can disable gap filling completely. Yes, this ends up with some small holes, but saves quite some time. Also it might reduce stringing, as sometimes the gap fill material does not fit into its hole and squeezes out. Disable gap fill by setting the `Gap fill` speed to 0.

Now go to the `Plater` tab and slice your model. In the bottom left corner, change the `View` to `Volumetric flow rate`. You model should have the maxum flow rate (8 mm³/s) everywhere (expect for the first layer) like in this picture:
![Flow Rate][flow_rate]

You should now be good to go for your first test print with high speed settings. If this works well (and I hope it does, otherwise this guide might be crap...) you can increase the `Max. Volumetric Speed` (e.g. in steps of 2 mm³/s) until your print starts to look ugly or your extruder makes painful noises and loses steps. If this happens, you have reached the limit of your printer. Go down to the last working value (I am running a Prusa i3 MK2.5S with a 0.8 mm nozzle at 17 mm³/s).

## Advanced Parameter Tuning

Ok, you got the basic fast print working, but you want more!

You can tune the amount of `Solid layers` at the top to close holes in the top layer of hooks for the rubber band. Increase the number of solid layers to 5. It also helps to set the `Solid infill` and `Top solid infill` to 0.55 mm, to close even more holes.

You can also tune the K factor (also known as linear advance) for your printer. Make sure it supports it. Prusa printers do support this. It will basically control the pressure in the nozzle. This is important at high speeds. You can read more about this in the [Prusa Knowledge Base](https://help.prusa3d.com/en/article/linear-advance_2252). Prusa suggest a default of 45 for PETG. I get better results with 40 on a 0.4 mm nozzle. On my 0.8 mm nozzle I am currently using a value of 15.

[gap_fill_and_infill]: pictures/gap_fill_and_infill.PNG "Gap Fill and Infill"

[only_perimeters]: pictures/only_perimeters.PNG "Only Perimeters"

[thin_wall_thickness]: pictures/thin_wall_thickness.PNG "Thin Wall Thickness"

[flow_rate]: pictures/flow_rate.PNG "Flow Rate"
