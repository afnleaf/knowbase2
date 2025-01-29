# Staggered Deep Learning

Right now large language models go through pretraining stage before going through anything else like reinforcement learning or supervised fine tuning. 

1. Imitation learning (watch and repeat, i.e. pretraining, supervised finetuning)
2) Trial-and-error learning (reinforcement learning)

What if we staggered this approach, do a little bit of imitation then some trial-and-error. For example, you show the model a large math corpus, then get it to do practice on some examples. Rather than showing the model the entire pre training corpus in one fell swoop. Typically, when teaching people, you show them the concept, then ask them to do some excercises. You don't ask them to read every book ever and then ask them questions about everything. You do a staggered approach. 

This approach may be a more effective, especially in a mixture of experts system.
