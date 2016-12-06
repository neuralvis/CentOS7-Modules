load("cuda/7.5", "cudnn/5.1", "anaconda/python3")
setenv("THEANO_FLAGS","mode=FAST_RUN,device=gpu,floatX=float32")
execute{cmd="source activate deeplearning",modeA={"load"}}
execute{cmd="source deactivate",modeA={"unload"}}
