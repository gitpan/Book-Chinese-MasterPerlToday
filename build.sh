#!/bin/sh

echo "Copying POD/eg to lib"
mkdir lib/Book/Chinese/MasterPerlToday
cp -fv ../*.pod lib/Book/Chinese/MasterPerlToday/
cp -fvr ../eg ./

echo "dzil build"
dzil build

echo "Clean Up";
rm -fvr lib/Book/Chinese/MasterPerlToday
rm -fvr eg