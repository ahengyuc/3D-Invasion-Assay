run("Duplicate...", " ");
run("Despeckle");
setOption("BlackBackground", true);
run("Convert to Mask");
run("Convert to Mask");
run("Fill Holes");
run("Analyze Particles...", "size=3000-inf circularity=0-1 show=[Overlay Masks] display include");
