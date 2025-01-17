# Game AI
Real time intelligence may come not out of LLMs but how to reason about gaming situations.

## Skills games require
Grounded cognitive skills that current AI systems struggle with.
- Real-time decision making
- Understanding of spatial dynamics
- Cause-and-effect learning through direct experience
- Complex coordination between perception and action
- Strategic thinking that combines immediate tactics with longer-term planning

There's stuff that you could probably brute force an LLM to learn through 100000 lifetimes.
Some heavy knowledge stuff rooted in statistics about best items and sets, etc. LLMs could do this.

It's abstract ideas like pressure on the map, both spatial and temporal.

How to do movement tech, when to employ it exactly. Threat analysis. Priority creating, One particular skill in deadlock is planning 1 minute ahead of what you are doing right now. You should always be envisioning what could happen in the future. This skill requires rapid continuous optimization. Information on the map could show up that changes your current plan and you need to make an quick decision on how to react. The meta is always about adapting to current results from top players. Adaptation happens in game not just after in review. This is something LLMs cannot tackle with large data sets. It is abstract thinking.

Planning as a program:
```
while(true) {
    observe();       // current game state
    analyze();       // potential futures
    synthesize();    // plan formation
    if(new_info()) { 
        adapt_plan();
    }
}
```
But how does this plan manifest? As decisions? As a natural language algorithm? A recipe? Or in some latent space.

Current AI systems optimize, through many iterations over static data. 
Lack the ability to perform rapid continuous optimization
fluid, contextual optimization
plans must be instantly revised based on new information 
We need new architectures that can perform dimensional transcendence

```
if emergent_property_detected():
    integrate(new_dimension);
    evolve(universe_model);``
```

Strong corner/weak corner knowledge demonstrates understanding of:

Space (geometry and cover)
Time (peeking advantage)
Risk/reward
Positional advantage
Line of sight mechanics


```
Gameplay Elements
├── Mechanics
│   ├── Aim
│   └── Movement Control
├── Mental
│   ├── Self Psychology
│   ├── Team Psychology
│   └── Enemy Psychology
└── Theory
    ├── Space
    │   ├── Corner Control
    │   ├── Position Control
    │   └── Map Control
    └── Time
        ├── Tempo
        ├── Proactive Play
        └── Reactive Adaptation
```

- Physical execution (Mechanics)
- Mental state/discipline (Mental)
- Strategic principals (Theory)

### How to tackle game learning:
Start with basic theory (space/time understanding)
Add mechanical execution
Only later tackle the complex psychological aspects

no.

It all feeds into itself. A player who is bad at aiming is going to have their other factors influenced by that. Their space understanding will be bad, they wont push because they wont be confident in hitting shots. They tend to play too passive or stupid aggro. The stupid aggro ones will probably climb faster just through sheer luck and force of will. 

It;s something like this. You have a hero with LOS on an area. That area is controlled by them based on their hero kit (theory) long range or short range, healing, etc its always game specific. but take a guy with a hammer, hammer can't miss in the area in front of them, they 100% contest that. But take a dude with a bow and arrow that hits 25% of his shots, he only contests it that much. But he can hit that one insta kill headshot so...

Also the bow and arrow guy can still be dumb happy, just going for headshots, you are far away from the action you can afford to shoot however many shots you want to.

Both are complex states.

For AI development, we might need to intentionally introduce mechanical imperfection to develop more human-like strategic understanding

The "stupid aggro" silver player might actually be learning more useful data about game states than the hesitant passive player.
This is why coaches sometimes tell players to be more aggressive and tone it back on their own terms to learn from mistakes. There is a term pro players say when they die in aggro ways "limit testing" this is literally test time learning done by humans. but in a more intentional way to break new ground.

Pro Player Limit Testing:
- Intentional pushing of boundaries
- Developing feel for risk/reward
- Building mechanical confidence
All of this is to discover new strategic, tactical or mechanical options.

This is different from silver "stupid aggro" because it's:
- Intentional vs. Random
- Learning-focused vs. Result-focused
- Data-gathering vs. Hoping-it-works

Does this suggest that for AI development, we might need to intentionally introduce mechanical imperfection to develop more human-like strategic understanding. This is an idea I wish to explore via the mechanical element. Where we could still introduce good amounts of theory.

No idea how to apply mental core knowledge to ai though.
- Recording "confidence states" during limit testing
- Tracking success/failure patterns
- Building risk assessment models

The true psychological elements of gameplay (tilt, pressure, team dynamics) might need a completely different approach.

I want to create an AI that learns how to aim in Deadlock. Mechanics and theory through identifying targets, a form of decision making. Take two images, identify objects. Identify target. Calculate vector of target from image 1 to image 2. Move mouse there on a path like a human would. There is a guy who made an AI robot that could aim through a set of robotic appendages. I wish to do it software based. Move mouse on natural curve to predicted next place of target.

Components:
├── Computer Vision
│   ├── Object Detection (frame 1, frame 2)
│   ├── Target Priority System
│   └── Movement Prediction
├── Mouse Movement Generation
│   ├── Natural Curve Calculation
│   ├── Human-like Acceleration/Deceleration
│   └── Path Optimization
└── Decision Layer
    ├── Target Selection Logic
    └── Shot Timing

Key challenges/opportunities:
- Natural mouse movement patterns (avoiding robotic straight lines)
- Human-like target acquisition time
- Deliberate mechanical imperfection
- Prediction for moving targets

I want to create a purely theory AI that looks at the deadlock minimap.
Components:
├── Map State Analysis
│   ├── Position Recognition
│   ├── Zone Control Calculation
│   └── Resource Distribution
├── Strategic Assessment
│   ├── Threat Analysis
│   ├── Opportunity Recognition
│   └── Territory Control
└── Temporal Planning
    ├── Short-term Predictions
    └── Long-term Strategic options

The connection is made within the minimap player indicator icon.

It's part of the same image used for aim.

It shows you where your hero is looking at.

Team vs not team. 

Could also make one that doesn't have fog of war cause replay viewer or match spectator. 

More for pro game analysis. Would probably want to start with more of a human application.

I think the first project would be just the aim vector stuff. No minimap in that yet, separate component. How to get funding for any of this? I need job, I can program. I made an auto streamer that auto spectates the game using simple computer vision opencv, ancient tech in AI terms.

Vision System Components:
├── Main Screen Analysis
│   ├── Target Detection
│   ├── Threat Assessment
│   └── Movement Prediction
└── Minimap Integration
    ├── Player Position/Facing (indicator)
    ├── Team Position Analysis
    └── Basic Zone control

World Experience Layer
├── Physical Simulation (Game Environment)
├── Multi-Modal Integration
│   ├── Visual Processing
│   ├── Spatial Awareness
│   ├── Temporal Understanding
│   └── Action-Reaction Loops
└── Rapid Optimization System
    ├── Real-time Decision Making
    ├── Continuous Adaptation
    └── Experience Integration

Learning Framework
├── Mechanical Skills
│   ├── Direct Interaction
│   └── Physical Execution
├── Theoretical Understanding
│   ├── Spatial Relations
│   ├── Temporal Dynamics
│   └── Strategic Principles
└── Psychological Elements
    ├── Risk Assessment
    ├── Confidence Modeling
    └── Adaptive Behavior

