# derive a string like 'icudt 48l' from a local file like 'external/icu4c/stubdata/icudt 48l-all.dat'
stubdata_path:= $(call my-dir)
root_dat_path := $(wildcard $(stubdata_path)/*-all.dat)
root := $(patsubst $(stubdata_path)/%,%,$(patsubst %-all.dat,%,$(root_dat_path)))
