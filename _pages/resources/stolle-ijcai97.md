---
layout: general_content
permalink: /resources/stolle-ijcai97/
---

<h3>
R. Stolle and E. Bradley, "Opportunistic modeling," <i>
    Proceedings of the IJCAI (International Joint Conference on
    Artificial Intelligence) Workshop on Engineering Problems in
    Qualitative Reasoning</i>, Nagoya Japan; August 1997
    </h3>

<b>Abstract</b>


System identification - the process of inferring an internal model
from external observations of a system - is a routine and difficult
problem faced by engineers in a variety of domains.  Typically, in the
hierarchy from more-abstract to less-abstract models, the model of
choice is the one that is just detailed enough to account for the
properties and perspectives that are of interest for the task at hand.
The main goal of the work described here was to design and implement a
knowledge representation framework that allows a computer program to
reason about physical systems and candidate models - ordinary
differential equations (ODEs), specifically - in such a way as to
find the right model at the right abstraction level as quickly as
possible.


A key observation about the modeling process is the following.  <i>
Not only is the resulting model the least complex of all possible
ones, but also the reasoning during model construction takes place at
the highest possible level at any time.</i> Because of this, the
knowledge representation framework was designed to allow easy
formulation of knowledge and meta knowledge relative to various
abstraction levels.  The implemented framework is the core of PRET, an
automatic modeling program that automates the system identification
process.


We present two examples of system identification tasks that can be
performed by PRET. The first example is a simple linear system that we
have chosen for a brief and clear presentation of PRET's features and
reasoning techniques. The second example is a real-world modeling
task: We show how PRET models a radio-controlled car used in the
University of British Columbia's soccer-playing robot project and
discuss important research directions that arise from this real-world
example.

