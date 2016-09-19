-- -*- lua -*-
-- AUTHOR: Madhu Srinivasan (madhu.srinivasan@kaust.edu.sa)
-- COPYRIGHT: King Abdullah University of Science and Technology

help(
[[
HPX (High Performance ParalleX) is a general purpose C++ runtime system for
parallel and distributed applications of any scale.
]])

whatis(
[[
Description: HPX (High Performance ParalleX) is a general purpose C++ runtime
system for parallel and distributed applications of any scale.
]])

whatis("Homepage: http://stellar.cct.lsu.edu/projects/hpx/")

load("cuda/7.5", "cudnn/5.1")

local home = os.getenv("HOME")
local base =  home .. "/CentOS7/software/hpx/0.9.99"
local binpath = base .. "/bin"
local libpath = base .. "/lib"
local includepath = base .. "/include"

prepend_path("PATH", binpath)
prepend_path("LD_LIBRARY_PATH", libpath)
prepend_path("CMAKE_LIBRARY_PATH", libpath)
prepend_path("CMAKE_INCLUDE_PATH", includepath)
prepend_path("CPLUS_INCLUDE_PATH", includepath)
