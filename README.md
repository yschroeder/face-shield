# Print COVID-19 Face Shields _the fast way_
Some files and documentation on how to print the Prusa Protective Face Shield really fast.

## Frequently Asked Questions

Q: That `Prusa Protective Face Shield RC3` prints so slow and the virus is spreading exponentially! How can we be faster?

A: Good point! This is exactly the purpose of this guide/repository. I will talk you through all the important things to consider when you want to print fast.

Q: Is your improved version strong enough? [Josef Prusa said on Twitter](https://twitter.com/josefprusa/status/1242931010641244161), that we should not change the design, because it needs to be beefy.

A: Actually, I don't know. Josef Prusa was not specific on why it was designed the way it was. I think the updated version is also good, it might not be as rigid, instead it is more flexible. If you think the improved version is not strong enough, there are other options. If you want to be sure, print `stl/covid19_headband_rc3_no_text v1.stl`. That version is the orignal one without the text, so it prints a bit faster while being exactly as strong and beefy.

Q: How much faster can we get?

A: Here are some expected printing times calculated by `PrusaSlicer` (for a Prusa i3 MK2.5 printing PETG):

* original file with `0.20mm SPEED` settings (one of the default profiles): 3:17h
* original file with settings included in `covid19_headband_rc3_1pcs.3mf` from original web page: 2:36h
* `stl/covid19_headband_rc3_no_text v1.stl` with `0.20mm SPEED` settings (one of the default profiles): 3:12h
* `stl/Covid-19 Shield v10.stl` with optimized settings: 0:50h
* `stl/Covid-19 Shield v10.stl` with optimized settings and a 0.8mm nozzle: 0:36h
