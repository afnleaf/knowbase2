# alternate fantasy format
- I play fantasy basketball.
- Last year my team won in the playoffs.
- Had a good team year round.

**Thesis**
- weekly head to head format.
- season long point based leagues don't have that same level of week in week out strategy that keeps you more engaged

**Antithesis**
- sometimes a team with a lot of points still ends up in the middle of the pack.
- two top teams competing vs each other
    - one team loses and doesn't get W
    - worse team might win their week and get a W despite doing worse than half the league

**Synthesis**
```
weekly free for all format
let n = number of teams in league
let s = 10 (how much to scale)
let p = s * n

in our league
n = 14, s = 10 -> p = 140

each team gets a certain number of points each week
let tp = set of team points
tp = {tp1, tp2, ..., tpn}
you take the total number of points
sum(tp)
then each team is awarded a percentage split of p

example with a 4 team league
t1: 1400
t2: 1100
t3: 1000 
t4: 1200
sum(tp) = 1400 + 1100 + 100 + 1200
= 4700

you take the total number of points
t1: 1400 / 4700 = 30% 
t2: 1100 / 4700 = 23%
t3: 1000 / 4700 = 21%
t4: 1200 / 4700 = 25%

and then you get that portion of points out of p
t1: 40 * 0.30 = 12
t2: 40 * 0.23 = 9.2
t3: 40 * 0.21 = 8.4
t4: 40 * 0.25 = 10

so far, it works exactly how a seasonal league would.
however here is the catch

the winner of the week gets an extra s number of points
t1: 22
t2: 9.2
t3: 8.4
t4: 10

this makes top teams try to compete harder each week because there is more on the line than just a W/L
it may also cause a snowball effect where the top team just dominates.
however it makes the middle of the pack a lot more fair
```


