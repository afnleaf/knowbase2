# Some thoughts about LLMs
Are you really curious? 

Or is that just the next most common word?

A mirror of my own ideas upon the vast vector space of everything that was ever written.

## Scaling Hypothesis is wrong, or is it?
People are becoming super bearish on scaling laws. Or are they? We went from pre-training scaling to inference time scaling. With CoT trees baked into the token generation. Right now, scaling laws are still intact (or are they). The idea is to use a CoT model like o1 to produce large trees that eventually stumble into the right answer. Now prune the trees, shape them up nicely and you have reasoning tokens to use as data for the next frontier model. We know the next one by Oai is called o3. So lets hypothesize that the pruned tree chains of thought from o3 will be used to train o4 and so on. This is inference time scaling feeding back into pre-training scaling. This feedback loop is how people think we will reach AGI or ASI. I could see it somewhat. 

However, are you intelligent or do you just know everything. How do you deal with novelty? I feel llms are just a piece of the puzzle and not the true path to artifical conciousness. The CoT is an extra piece, a fantastic one, but the puzzle is still not complete.

## The Law of Diminishing Returns
If you choose to look at it like this, silicon chips are technically self improving. You make a chip, you put it in a computer and you use that computer to work on the next chip. Is moore's law dead or not? Well when you look at how much more power we are pumping through CPUs and GPUs, yes absolutely. They have to "cheat" to get to higher performance. Raster performance in GPUs has not improved significantly from 4090 to 5090 and we will see that when the 5090 drops at the end of this month. In fact if you look at hardware development in the silicon industry, everything they are doing is actively fighting against the law of diminishing returns. Really this isn't cheating, you hit a roadblock, you improve. 

The point of this is that we have seen computers recursively self improve for a while. Has this resulted in some fantastic utopia? No, and mostly due to how society structures its economy. 

How much does it even matter if there is an intelligence explosion. The way I see how the world is structured right now, we don't seem to be lacking in that department. How much economic growth will really happen from being able to write more software. We already write so much crap and most websites and apps suck mega doo doo. Sure is gonna be great to accelerate the dead internet theory or the enshittification of everything digital. 


#### The plane anaolgy
Transformers are the first airplane by the wright brothers.

We want AGI.

That is like trying to strap 500 wings to the first airplane and try to fly to the moon.

We haven't even gotten close to the jet engine yet.

Obviously we have accelerating technological advancement in our future current time.

So we will get to the jet engine at some point but thats still just a stepping stone to the moon.

## Limitations of LLMs 
- No true memory or persistent state: Context
- No real-time learning: Test Time Learning
- No causal understanding: Not sure about this one
- Limited reasoning capabilities (despite appearances)
    - superprompt is cooler than o1 hidden "reasoning"
    - just token predicting through thinking patterns
    - an abstraction of true thinking
    - inherently one dimensional across the token string
    - the weights are are multi dimensional, d+
    - thought is also d+
- No true model of reality/physics
- No integration with sensorimotor experience: needs an avatar in the world.

How much does CoT address these problems?

## CoT
Chain of thought is a new inference time scaling method to produce better output. OpenAI released their o1 model but hides the CoT token stream. On Jan 20th 2025 Deepseek released a technical paper on how they trained their open sourced reasoning models. From this paper and the results we can finally talk about CoT with some certainty on how they work. Reinforcement learning for sure, the one speculation is that test time search might be happening in latent space. There are two models Deepseek-R1 and Deepseek-R1-Zero, the latter is human readable and the former is more raw.

You begin with a base model. In this case probably Deepseek-V3 or V2. Then you train with RL, mostly unsupervised.

**RL Algo**:
Group Relative Policy Optimization: estimates group scores, for each question, GRPO samples a group of outputs from the policy and then optimizes by maximizing an objective. (Bunch of math). 

**Reward Model**: the source of the training signal, decides optimization direction of RL 
- accuracy: evaluate whether the response is correct. Math problems have deterministic answers and the model is required to provide the final naswer in a specified format. This enables reliable rule-based verification of correctness. Ex: leetcode problems give feedback based on the predefined test cases.
- format: reward the model for putting its thinking process between <think></think> tags. 

This reward step is short in the paper but an incredible feat of automation by some gifted programmers. 

**Training Template**:
- Simple template to guide the base model, adhere to instructions
- Observe model's natural progression during process.
```
Aconversation between User and Assistant. The user asks a question, and the Assistant solves it.
 The assistant first thinks about the reasoning process in the mind and then provides the user
 with the answer. The reasoning process and answer are enclosed within <think> </think> and
 <answer> </answer> tags, respectively, i.e., <think> reasoning process here </think>
 <answer> answer here </answer>. User: prompt. Assistant:
```
Where prompt is replaced with the user query during training.\

**Cold Start**
- construct and collect a small amount of long CoT data to fine-tune the model
- improve readability


PRM led to reward hacking.

MCTS was too hard to implement because the token search space is too large.

### CoT - Anthropomorphism
Deepseek-R1 shows an anthropomorphic reasoning token stream. People are hyping this up. Talking about how instead of a Shoggoth wearing a human mask the Shogoth must become human to *think*. R1-Zero shows a mix of languages and a less human readable reasoning stream. It also performs worse than R1.

Is the model learning to think anthropomorphically because that is how thinking should be? Or is it learning to mimic the reasoning tokens it was cold started with and that are present in its training corpus. I believe the former is more likely. People get way too hyped about stuff without making these simple connections. They willingly blind themselves to reality in the hope of some technofuturistic AI utopia.

Algorithmic Mimicry is baked into the whole process. This is not reasoning or intelligence. A human would never write down all of these steps the same way the LLM does. The reasoning stream is but an abstraction of the real reasoning process. Now if the reasoning is actually happening in latent space then that it is interesting. I suspect something is going on there that is wholly emergent. 

### CoT - Other
This chain of thought stuff is more interesting than the base LLM itself. If this is how top AI labs are doing it, then I don't think I am out of my element to contribute to the research. It does not seem too difficult. I really should make a base LLM to have that down to a T though.

## Ways to ground language in real-world experience
I think the jet engine could be that real world experience stuff.
If I talk to someone and I say I tripped on my shoe, they laugh cause its an action they have experience with.
An llm only experiences a ghost of language describing an experience.
An abstraction. 

Do humans store real world exp as abstractions in their memory?
We are multi modal.
- Physical sensation memories (the feeling of losing balance)
- Visual memories (seeing the ground rush up)
- Emotional memories (embarrassment, surprise)
- Proprioceptive memories (body position awareness)
- Motor memories (the instinctive recovery response)

We need world models, grounded in real experience.

The mystery of life isn't a problem to solve, but a reality to experience.

What if we started with simulated worlds like video games.
An abstraction of our world, that the entitiy can control an avatar in.
Soul -> Mind -> Body

I don't know if I am suggesting that LLMs are the soul. Maybe just the tongue, you know. But scaled up somehow it does what you are doing. 

The idea of building a body grounded in world interaction is compelling. We can then build inwards. Either way, we need all three pieces. Maybe it all needs to be built at the same time, iterating on all of it together, rather than supercharging one piece. 


