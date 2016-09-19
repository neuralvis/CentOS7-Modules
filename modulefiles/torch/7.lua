-- -*- lua -*-
-- AUTHOR: Madhu Srinivasan (madhu.srinivasan@kaust.edu.sa)
-- COPYRIGHT: King Abdullah University of Science and Technology

help(
[[
Torch is a scientific computing framework with wide support for machine learning
algorithms that puts GPUs first. It is easy to use and efficient, thanks
to an easy and fast scripting language, LuaJIT, and an underlying C/CUDA
implementation.
]])

whatis(
[[
Torch is a scientific computing framework with wide support for machine learning
algorithms that puts GPUs first. It is easy to use and efficient, thanks
to an easy and fast scripting language, LuaJIT, and an underlying C/CUDA
implementation.
]])

whatis("Homepage: http://torch.ch")

load("cuda/7.5", "cudnn/5.1")

local home = os.getenv("HOME")
local base =  home .. "/CentOS7/software/torch"
local binpath = base .. "/install/bin"
local libpath = base .. "/install/lib"
local luapath = [[
/home/srinivm/.luarocks/share/lua/5.1/?.lua;
/home/srinivm/.luarocks/share/lua/5.1/?/init.lua;
/home/srinivm/CentOS7/software/torch/install/share/lua/5.1/?.lua;
/home/srinivm/CentOS7/software/torch/install/share/lua/5.1/?/init.lua;./?.lua;
/home/srinivm/CentOS7/software/torch/install/share/luajit-2.1.0-beta1/?.lua;
/usr/local/share/lua/5.1/?.lua;
/usr/local/share/lua/5.1/?/init.lua
]]

local luacpath = [[
/home/srinivm/.luarocks/lib/lua/5.1/?.so;
/home/srinivm/CentOS7/software/torch/install/lib/lua/5.1/?.so;./?.so;
/usr/local/lib/lua/5.1/?.so;
/usr/local/lib/lua/5.1/loadall.so
/home/srinivm/CentOS7/software/torch/install/lib/?.so
]]

-- emulate what "torch-activate" does
prepend_path("PATH", binpath)
prepend_path("LD_LIBRARY_PATH", libpath)
prepend_path("CMAKE_LIBRARY_PATH", libpath)
prepend_path("DYLD_LIBRARY_PATH", libpath)
setenv("LUA_PATH", luapath)
prepend_path("LUA_CPATH", luacpath)
