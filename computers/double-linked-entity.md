# Double Entity Linkage, A Relational Entity (component?) system

Optimizing for cache hits is one of the most optimal ways to program. The generational indices system seems fine but it is a whole centralized data system that exists in its own place in RAM. Almost all entity data should be able to get loaded into cache at once (I may be wrong).

Doubly linked entities with a relationship that specifies who follows who. When one gets deleted it runs an algorithm to get free the relationship safely for both together. You don’t need to build a separate relationship object, just add a small bit of data within the entity. 

Any link from entity A to entity B requires a link back to the original. This rule guarantees that the link is complete. Chain links loop. Think of this like fastening a link. The link is invalid if it cannot loop back to itself. These are immutable reference chains. With added functionality to create and break the linkage.

The double linkage is fairly low cost imo, compared to a central system. Slightly increased memory burden in Entity size for extremely low coordination system overhead. 

This is a potential solutions in theory that must first be applied in code to be tested. Which system (Generational Indices or Linked Entities) is theoretically better in terms of performance and scalability?
