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
	swmm5.c \
	climate.c \
	controls.c \
	culvert.c \
	datetime.c \
	dwflow.c \
	dynwave.c \
	error.c \
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
    routing.c \
    runoff.c \
    shape.c \
    snow.c \
    stats.c \
    statsrpt.c \
    subcatch.c \
    table.c \
    toposort.c \
    transect.c \
    treatmnt.c \
    xsect.c \
    -o epaswmm5.1.1 -lm
cd ..
mv ./src/epaswmm5.1.1 .
rm -rf ./src