-- -*- lua -*-
-- AUTHOR: Madhu Srinivasan (madhu.srinivasan@kaust.edu.sa)
-- COPYRIGHT: King Abdullah University of Science and Technology

help(
[[
jemalloc is a general purpose malloc(3) implementation that emphasizes
fragmentation avoidance and scalable concurrency support.
]])

whatis(
[[
Description: jemalloc is a general purpose malloc(3) implementation that emphasizes
fragmentation avoidance and scalable concurrency support.
]])

whatis("Homepage: http://jemalloc.net")

local home = os.getenv("HOME")
local base =  home .. "/CentOS7/software/jemalloc/4.2.1"
local binpath = base .. "/bin"
local libpath = base .. "/lib"
local includepath = base .. "/include"

prepend_path("PATH", binpath)
prepend_path("LD_LIBRARY_PATH", libpath)
prepend_path("CMAKE_LIBRARY_PATH", libpath)
prepend_path("CMAKE_INCLUDE_PATH", includepath)
prepend_path("CPLUS_INCLUDE_PATH", includepath)
