# Quality control for face shields

Welcome to the quality control section! You being here indicates that you actually care about what you print. Congratulations!

**ATTENTION: THESE TESTS ONLY APPLY TO THE `v18` SHIELD! OTHER VERSIONS ARE LESS FLEXIBLE AND WILL POSSIBLY BREAK EARLIER!**

## What your part should look like

Actually, we can't really tell you what your printed part needs to withstand. We can only show you what our parts withstand. If your part breaks earlier, this does not automatically mean it is bad, but it is not as good as it could be! **Our part in the pictures is made from PETG, so if your part is from another material your results might be different.**

To check your part, bend it the following ways, **during bending it should not crack at all!**

Put your part on a table and press the tabs for the plastic sheet down:
![Bend 1][bend1]

Bend the rubber band hooks all the way to each other:
![Bend 2][bend2]

Bend the two sides at 90° angle **in both directions multiple times**:
![Bend 3][bend3]
![Bend 4][bend4]

Bend the two sides across each other:
![Bend 5][bend5]

[Here](https://cloud.stratum0.org/index.php/s/fAjpCAXFLmFsxLq?path=%2FMaterialtest%20Videos) you can find a video that shows how a PLA part can be abused if printed properly (file `PLA biegen.mp4`).

## What your part should not look like

[Here](https://cloud.stratum0.org/index.php/s/fAjpCAXFLmFsxLq?path=%2FMaterialtest%20Videos) you can find a video that shows how a good part looks in comparison to a bad part (file `qualitätstest.MOV`).

### Gaps

This part contains gaps (top two red arrows) which lead to the crumbling in the video shown above:
![Gaps][gaps]

You have two options to close these gaps: In `PrusaSlicer` you can increase the `Extrusion width` of `External perimeters` even more (above 0.87 mm). `PrusaSlicer` will put the two shells closer together in this case (to reach the required 1.67 mm wall thickness). The other option is to increase the `Extrusion multiplier` so more material can fill the gap.

The problem indicated by the lower red arrow can be fixed by decreasing the `Extrusion width` for `Solid infill` and `Top solid infill` to 0.55 mm or less, depending on your nozzle size.

### Holes

You might also encounter holes in your part:
![Holes][holes]

This effect can be reduced by increasing the `Extrusion width` of `External perimeters`. I found 1.0 mm working.

[bend1]: pictures/bend1.jpg "Bend 1"
[bend2]: pictures/bend2.jpg "Bend 2"
[bend3]: pictures/bend3.jpg "Bend 3"
[bend4]: pictures/bend4.jpg "Bend 4"
[bend5]: pictures/bend5.jpg "Bend 5"
[gaps]: pictures/gaps.jpg "Gaps"
[holes]: pictures/holes.jpg "Holes"
