#!/bin/sh

cd ../
rm -rf ./build
mkdir build
cd ./build
cp -R ../src .
cd ./src
sed -i "" 's/#define DLL/\/\/#define DLL/' ./swmm5.c
sed -i "" 's/\/\/#define CLE/#define CLE/' ./swmm5.c
gcc -Wall \
	climate.c \
	controls.c \
	culvert.c \
	datetime.c \
	dwflow.c \
	dynwave.c \
	error.c \
	exfil.c \
	findroot.c \
	flowrout.c \
	forcmain.c \
	gage.c \
	gwater.c \
	hash.c \
	hotstart.c \
	iface.c \
	infil.c \
	inflow.c \
	input.c \
	inputrpt.c \
	keywords.c \
	kinwave.c \
	landuse.c \
	lid.c \
	lidproc.c \
	link.c \
	main.c \
	massbal.c \
	mathexpr.c \
	mempool.c \
    node.c \
    odesolve.c \
    output.c \
    project.c \
    qualrout.c \
    rain.c \
    rdii.c \
    report.c \
	roadway.c \
    routing.c \
    runoff.c \
    shape.c \
    snow.c \
    stats.c \
    statsrpt.c \
    subcatch.c \
	surfqual.c \
	swmm5.c \
    table.c \
    toposort.c \
    transect.c \
    treatmnt.c \
    xsect.c \
    -o epaswmm5.1.15 -lm -lomp
cd ..
mv ./src/epaswmm5.1.15 .
rm -rf ./src