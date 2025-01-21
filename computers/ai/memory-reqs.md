# GPU memory requirements for serving LLM inference

```
M = [ (P * 4B) / (32 / Q) ] * 1.2

where:
M is the GPU memory in gigabytes
P is the amount of parameters in the model
4B expresses the number of bytes used per each parameter
32 bits in 4 bytes
Q the amount of bits that should be used for loading the model (16, 8, 4, 3)
1.2 is the 20% overhead
```

Factor in the type of Q that you want
- FP32 (32-bit floating point): 4 bytes per parameter
- FP16 (half/BF16) (16-bit floating point): 2 bytes per parameter
- INT8 (8-bit integer): 1 byte per parameter
- INT4 (4-bit integer): 0.5 bytes per parameter
- Tensor 16?
