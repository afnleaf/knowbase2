<rules>
Available Pokemon	
- Paldea Pokedex (Paldea Region Forms)
- Pokemon from Pokemon HOME and Regional Forms
- Teal Mask Pokedex
- Indigo Disk Pokedex
<banned_pokemon>	
- Paradox Pokemon
- Four Treasures of Ruin
- Legendary Pokemon
- Mew
- Jirachi and Deoxys
- Phione and Manaphy
- Darkrai
- Shaymin (Land and Sky Formes)
- Arceus
- Keldeo (Base and Resolute Formes)
- Meloetta (Aria and Pirouette Formes)
- Hoopa (Unbound and Confined)
- Diancie
- Volcanion
- Magearna
- Zarude
- Pecharunt
- Koraidon and Miraidon
- The Loyal Three
- All Ogerpon Forms
- All Regis
- Urshifu
- Flutter Mane
- Iron Bundle
</banned_pokemon>
-

Terrain does not conflict with Weather (Rain)

Switches happen before moves

Illusion ability copies the last pokemon you bring.

In VGC you bring 4 pokemon, 2 lead, 2 bench
</rules>

I want to do well at regional in Toronto. We have a month to prepare.

Last year we brought a weezing team, which is inherently a reactive disruptive force to opponents strategies. We used ability shield Tornadus under neutralizing gas to set up the field in a proactive way where we are entirely in control. I want to further explore this proactive aspect of controlling the lines of play no matter the situation.

Right now, I like bridge, maus and rain (Archaludon, Maushold, Pelipper)

Here are some iterations of teams we made using this core of 3:

Bridge v2
https://pokepast.es/25573a4d56c43524

Dragon Teapot
https://pokepast.es/8134cf290f057d84

Dual win conditon mixed attacker archaludon offense:
- stamina + pop bomb
- soak + electro shot

The idea of yin to the yang. We discovered our jung, Rillaboom using the ideas detailed in this document.
Then we decided on Basculegion and Kingambit for testing. This is the same six we started with, but with heavy optimization.

```
Archaludon @ Magnet  
Ability: Stamina  
Level: 50  
Tera Type: Electric  
EVs: 156 HP / 252 SpA / 100 Spe  
Modest Nature  
IVs: 0 Atk  
- Dragon Pulse  
- Electro Shot  
- Body Press  
- Protect  

Maushold @ Safety Goggles  
Ability: Friend Guard  
Level: 50  
Tera Type: Ghost  
EVs: 212 HP / 4 Atk / 36 Def / 4 SpD / 252 Spe  
Jolly Nature  
- Population Bomb  
- Taunt  
- Follow Me  
- Protect  

Pelipper @ Focus Sash  
Ability: Drizzle  
Level: 50  
Tera Type: Ghost  
EVs: 4 HP / 252 SpA / 252 Spe  
Timid Nature  
IVs: 0 Atk  
- Hurricane  
- Weather Ball  
- Tailwind  
- Soak  

Rillaboom @ Loaded Dice  
Ability: Grassy Surge  
Level: 50  
Tera Type: Poison  
EVs: 132 HP / 116 Atk / 20 Def / 140 SpD / 100 Spe  
Adamant Nature  
- Wood Hammer  
- Grassy Glide  
- U-turn  
- Fake Out  

Basculegion @ Choice Scarf  
Ability: Adaptability  
Level: 50  
Tera Type: Water  
EVs: 252 Atk / 4 SpD / 252 Spe  
Jolly Nature  
- Wave Crash  
- Last Respects  
- Flip Turn  
- Rain Dance  

Kingambit @ Assault Vest  
Ability: Defiant  
Level: 50  
Tera Type: Grass  
EVs: 252 HP / 252 Atk / 4 SpD  
Adamant Nature  
- Kowtow Cleave  
- Sucker Punch  
- Iron Head  
- Tera Blast  
```

## Dual Offensive Toolkit
We want to build our strategy around Archaludon as the core aspect. We build layers of support around it. Archaludon has a key aspect where it does not need to sacrifice survivability or speed for mixed attacking potential.

### Yin (Mode 1): Body Press + Stamina + Population Bomb 
- Archaludon + Maushold
- Physically-focused (Population Bomb → Body Press)
- Immune to intimidate
- Physically Defensive
- Follow Me and Friend Guard for long lasting presence.

Weaknesses:
- Population Bomb accuracy (90%)
- Ghost-types block Body Press

### Yang (Mode 2): Drizzle + Soak + Electro Shot 
- Pelipper + Archaludon
- Special-focused (Rain → Electro Shot)
- Remove resitances using Soak.
- Incredible Soak + Tera Electric OHKO potential on turn 1.

Weaknesses:
- Ground types before Soak
- Tera type overrides type change to water

#### Both modes:
- Immediate pressure
- Build-up strategy with boosts
- Uses two Pokemon's actions
- Can be disrupted by Protect
- Require similar action economy
- Scaling beyond the initial turn
- Rely on abilities (stamina and drizzle) (weak to neutralizing gas)
- Lose to haze

#### Complementary
The strength of one mode complements the weaknesses of the other and vice versa.
Soak allows you to hit ghost types with body press. 
Body press lets you hit ground types and electric resists.

## Yin to Yang to Jung
That secret spice, a dash of acid that completes the strategy. Dual nature of our Archaludon strategy requires a "jung" element that creates perfect adaptability.

The Jung needs to be something that:

- Works FROM THE BENCH
- Threat of switching in
- Forces team preview decisions
- Creates uncertainty in turn 1
- Allows mid-game pivots

- Forces impossible choices in game and team preview
- Force opponent to prep for all modes
- Must force PREPARATION SPLITS

- Not disrupt core pairs
- Enhance both modes
- Must work with BOTH cores
- Bridges both modes
- Must enable MODE SWITCHING

- Creates unique pressure
- Create third angle of pressure
- Must threaten DIFFERENT angles

### Self proc stamina pivot move sequence
Archaludon is resitant to all 3 pivot moves, u-turn, flip turn and volt switch. We can avoid enemy protect but still pivot our team out and get an advantage with good field conditions. Fake out allows for Tailwind set ups on turn one.

#### Move options
Flip Turn
- in rain, does more damage
- our Archaludon is currently built for damage and speed, not bulk
- every bit of chip counts
- u-turn is not stab and lower bp

Volt Switch
- ground is immune
- overlap with electro shot
- soak synergy
- STAB leads to more chip on Arch

U-turn
- lowest bp, good and bad, less chip, less damage on enemy
- probably the best option

#### The Sequence
- Start: Pelipper + U-turn user in front
- (Optional): Fake Out to Secure Tailwind
- Switch Pelipper → Archaludon + U-turn targeting Pelipper's slot
- Switches resolve first: Archaludon now in Pelipper's position
- U-turn executes: Hits Archaludon, triggering Stamina
- U-turn user switches out after

This creates an excellent field state.
+ Get Tailwind up
+ Archaludon Free Stamina proc (+1 Def)
+ Get to switch U-turn user to back position
+ Works regardless of U-turn user's speed
+ Drizzle established rain.
+ Opponent forced to respect multiple modes and can't prevent the sequence
+ Forces opponent to guess intent and make reads
+ If (Rillaboom) -> Grassy Terrain established

This tech creates new dimensional pressure:
- Opponent must respect:
   - Fake Out + aggressive play
   - U-turn + switch sequence
   - Direct Attack pressure from pivot user. 
- Supporting both modes efficiently
- Maintains positioning advantage
- Adds additional mind game layer, forcing opponent to respect multiple lines
- Adding technical setup options
- Maintain control of field conditions by swapping out. (Pressure of coming back in if opponent uses their own terrain or weather)

### Rillaboom
Too good not to have as rilla enables both modes. This pokemon transcends the maus/rain modes while supporting them both, creating an element beyond needed to complete the team's strategic framework.

----

## Intrinity as a concept
Infinity, Trinity:
- Soul Mind Body
- Positive Negative Ground
- Proton Neutron Electron
- Yin Yang Jung
- Sun Moon Star
- Man Woman Child
- Plaintiff Defendent Judgement
- Father Son Holy-Spirit
- Past Present Future
- Thesis Antithesis Synthesis

### Properties
Transcendence of Duality:
- Not mere opposition (A vs B)
- Not compromise (A + B)
- True synthesis creating new dimension

Dynamic Equilibrium:
- Each element maintains distinct role
- System achieves stability through motion
- Balance through active interaction

### Core
Another dimension to the intrinity idea. We have a strategy that builds around a core (archaludon) the yin and yang is only the combination of that core with the support. This is a lot more about state spaces. But how do we build better layers around the core piece?

Core → Direct Support → Technical Layer → Emergent Layer
Each layer adds dimensional complexity

Core: Nuclear Force
Base Space: Proton ↔ Electron
Pivot: Neutron (enables nuclear stability)

Core: Electromagnetic Field
Base Space: Positive ↔ Negative charge
Pivot: Ground (enables charge flow/balance)

Core: Divine Nature
Base Space: Father ↔ Son
Pivot: Holy Spirit (enables connection)

Core: Time itself
Base Space: Past ↔ Future
Pivot: Present (enables transition)

Core: Qi (fundamental energy)
Base Space: Yin ↔ Yang
Pivot: Jung (enables transformation)

Archaludon is the Qi. The KEY.

Core: Archaludon (fundamental win condition)
Base Space: Mausmode ↔ Rainmode
Pivot: Rillaboom

### Theoretical Yapping
Dualistic Dialectics: (Thesis + Antithesis) → Synthesis
(OR relationship)
- Opposition creates higher truth
- Resolution through combination
- Linear progression

Homeostatic Dialectics / Double Dialectics: (Thesis ←→ Alternative) ←→ Homeostasis
(AND relationship)
- Coexistence of states
- Dynamic equilibrium
- Cyclical harmony

Yin ⊕ Yang = Basic dual modes
(Yin ∨ Yang) ∧ Jung = Complete strategic framework

let yi = yin, ya = yang, ju = jang

Jung is not mode 3 but rather Yi * Ju or Ya + Ju. A vector rather than an addition. A change of direction.

Ju = Vector field over (Yi, Ya) space
Properties:
- Direction (strategic intention)
- Magnitude (execution pressure)
- Field effects (terrain, weather)
Fake out vs wood hammer vs u-turn creates different directions and magnitudes. It is not simple pivot operation from A to B, it can lead to so many possibilities. The jung allows you to proactively get into the state you want. Remember the core is Archaludon. We have six possible start states, we choose which side we work with, working with both is enabled by jung.

Ju = Pivot Operator P where:
P: State1 ↔ State2
Properties:
- Preserves momentum (U-turn maintains advantage)
- Enables state transitions with value generation

Base State Spaces:
Yi ↔ Ya (Non-orthogonal pair)
- Complementary modes
- Interrelated strategies
- Shared core (Archaludon)

Geometric Representation (Triangular relationship)
Yi ------- Ya
      |
     Jung

### Application to Pokemon
Traditional Binary:
Physical <-> Special
Offense <-> Defense
Setup <-> Disruption
Replaced by the intrinity theory.

Core: Archaludon
- Fundamental presence
- Exists in physical/special states
- Maintains team integrity
- Enables transformations

Base Space: Physical ↔ Special modes
- Complementary states
- Direct relationship
- Shared core (Archaludon)
- Cyclic interaction

Pivot: Rillaboom
- Enables mode transitions
- Maintains strategic balance
- Generates position value

### Non-Archaludon Pairs

Maus + Peli = Support Synergy
- Follow Me + Tailwind setup
- Rain support while redirecting

Maus + Rilla = Control Pair
- Fake Out + Friend Guard
- Terrain control with redirection

----

## What to do next
- Develop clear decision trees, practice specific sequences
- Identify key failure points, develop contingency plans

- Recognize current state
- Identify valuable transitions
- Apply pivot operator
- Generate value while maintaining position

#### Set optimization
Do I make bridge bulkier or keep special attack?

## Core Vulnerabilities

### Ability Disruption Vectors
**Neutralizing Gas**
- Disables both core modes:
  - Stamina (Yin mode disabled)
  - Drizzle (Yang mode compromised)
- Mitigation: None currently implemented
- Critical Risk: High

**Ability Swap/Role Play**
- Can steal Stamina
- Removes core defensive scaling
- Current Counter: None
- Risk Level: Medium

**Pressure on Friend Guard**
   - Simple targeting removes defensive layer
   - No backup defensive support
   - Risk Level: High

### Bad Play
Sometimes you just make bad moves. Like tailwind under trickroom.

### Weather Control
**Weather Wars**
- Slower weather setter override Drizzle on lead
- Sun
- Snow
- Sand
- Rain mirror
- Risk Level: High

### Technical Sequence Disruption
**Protect Read Counters**
- Disrupts U-turn setup
- Breaks momentum
- Answer: self proc stamina swap

## Strategic Weaknesses

### Mode-Specific Vulnerabilities
**Yin Mode (Physical)**
```
Weakness Matrix:
- Ghost Types (Body Press blocked)
- Accuracy reliance (Population Bomb)
- Setup disruption (Haze)
- Position control (Parting Shot)
```

**Yang Mode (Special)**
```
Weakness Matrix:
- Ground Types (pre-Soak)
- Weather override
- Type: Water immunity/absorption (Gastrodon)
- Terrain interference
```

### Team Composition Gaps
**Speed Control**
- Single Tailwind user
- Trick Room vulerable
- Limited Priority moves
- Answers:
    - we don't always need speed control, we play around living and dishing out big damage in one turn
    - fake out, protect to stall through trick room

**Mode Switching Costs**
- Turn investment
- Position vulnerability
- Risk Level: Medium

### Systemic Threats
**Support Disruption**
```
Threat Vector Analysis:
- Imprison
- Taunt
- Encore
- Follow Me
Impact: Medium
```

**Field Control**
```
Threat Vector Analysis:
- Terrain control
- Weather override
- Room effects
Impact: Medium-High
Current Counter: Partial
```

### Elements to improve on
- Add secondary speed control option
- Develop weather-independent plan
- Improve Ghost matchup
- Develop neutral game plans
- Develop anti-support tech
- Secondary defensive support
- Alternative pivot options
- Backup weather control
- Alternative items
- Technical move coverage

----

## Final Pairs to add
We need to cover all of our weaknesses 

### Field condition synergy

**Armarouge the grassy terrain abuser**
Armarouge @ Power Herb  
Ability: Flash Fire  
Level: 50  
Tera Type: Grass  
EVs: 252 HP / 252 SpA / 4 SpD  
Modest Nature  
IVs: 0 Atk  
- Meteor Beam  
- Energy Ball
- Psychic
- protect

Armarouge covers:
sneasler
ninetales-alola
snow teams
good in psychic terrain
sun matchup is fun and wall its sweepers
we turn into a grass type in grassy Terrain
soak synergy
meteor beam the flying types

im so interested in the soak angle, grass and electric moves ftw
it forces defensive tera from a pokemon that probably doesnt even want to tera
so proactive, impossible decision, who to tera? left or right
forced to respons vs tailwind Too

pelipper kinda goated.

If this team was used for reg G I wonder what restricted legendary I would use.

**Basculegion**
- Scarf adaptability
- works outside of rain as a late game last respects sweeper
- can set up rain if needed

```
Basculegion @ Choice Scarf  
Ability: Adaptability  
Level: 50  
Tera Type: Water  
EVs: 252 Atk / 4 SpD / 252 Spe  
Adamant Nature  
- Wave Crash  
- Last Respects  
- Flip Turn  
- Rain Dance
```

basculegion serves the purpose of early game pivot/weather war control. It can serve to enable a play like rain dance + electroshot if they lead with their own weather, can also do the flip turn stamina proc stuff. Late game we have adaptability boosted last respects, consider how busted that damage would be. Sure we lose out on swift swim but were jolly scarf and don't care about weather. We can sweep through opponent weather teams.

Armarouge + Basculegion Synergy:
├─ True Dual Win Conditions
│  ├─ Power Herb Meteor Beam
│  └─ Choice Scarf Last Respects
│     (Both are actual OHKO threats)
│
├─ Perfect Terrain Interaction
│  ├─ Armarouge gets Tera Grass boost
│  └─ Basculegion gets recoil healing
│
├─ Different Speed Solutions
│  ├─ Power Herb Meteor Beam ignores TR
│  └─ Scarf threatens TR setters directly
│
└─ Forces Impossible Decisions
   ├─ Can't safely Tera vs both threats
   └─ Must respect both speed Modest

Weak to dark types
What else is this weak to?
Does it cover our weaknesses? yes, pretty well, but might create new ones.

**Kingambit**

```
Kingambit @ Assault Vest/Black Glasses/Life Orb
Ability: Defiant  
Level: 50  
Tera Type: Fairy  / Dark / Grass
EVs: 252 HP / 252 Atk / 4 SpD  
Adamant Nature  
- Kowtow Cleave  
- Sucker Punch  
- Iron Head / Swords Dance / Tera Blast 
- Low Kick / protect
```

"Having swept five of Barack's mons with booster energy iron valiant, Biden chuckled and said 'give up Barack its joever for you' Obama simply smiles and sends out his last mon. Baffled by Obama's grin, Biden tries to provoke Obama, 'your last mon he ain't doin nun lil- huh what was that?' >Kingambit's Supreme Overlord, Kingambit gained strength from the fallen. Then Biden feels true fear for the first time. 'Stand Proud Joe, we Barack'"

https://www.youtube.com/watch?v=cwb86JWcavM 

We need to see if Defiant is the only option or if we can somehow make Supreme Overlord work.

Gambit is kind of goated though. Tera blast grass could be some fun stuff. Would do loaded dice Rilla if AV gambit.

----

### ToDo

**Battle**
- test team on showdown

**Optimize**
- tera types
- items
- every move
- speed tiers
- ev spreads

**Matchups**
- develop lines vs common teams

