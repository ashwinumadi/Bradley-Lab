---
layout: general_content
permalink: /current_projects/topology/
---
<h2>Computational Topology and Topological Data Analysis</h2>


<h3>Project Description</h3>

A fundamental way to describe an object is to specify its topology:
how many pieces or holes it contains, whether or not it is connected,
etc.  In the real world, this might appear to be a lost cause, as data
are both limited in extent and quantized in space and time, and
topology is fundamentally an infinite-precision notion.


There are, however, a variety of ways to glean useful information
about the topological properties of a manifold from a finite number of
finite-precision points upon it.  For example, one can analyze the
properties of the point-set data - e.g., the number of components and
holes, and their sizes - at a variety of different precisions, and
then deduce the topology from the limiting behavior of those curves.
One can exploit connectedness, continuity, and lacunarity to separate
signals from different dynamical regimes, and one can compute the
Conley index of a dataset in order to find and formally verify the
existence of periodic orbits.  The remainder of this document explains
and demonstrates some of these ideas.


<h3>Connectedness</h3>


An <a href="{{ '/resources/topology-defs/' | relative_url }}"><i>epsilon chain</i></a> is a
finite sequence of points x_0 ... x_N that are separated by distances
of epsilon or less: that is, |x_i - x_i+1| < epsilon.  Two points are
<i>epsilon connected</i> if there is an epsilon chain joining them.
Any two points in an <i>epsilon-connected set</i> can be linked by an
epsilon chain.  The set shown in the image below, for instance,
contains eight points:

<TABLE BORDER=0 CELLSPACING=8 CELLPADDING=8>
<TR ALIGN=Center>

<TD><A HREF="{{ '/assets/gifs/eps-chain.jpg' | relative_url }}" width="600"
onMouseMove="window.status='Show this image a little larger'; return
true"><IMG SRC="{{ '/assets/gifs/eps-chain.jpg' | relative_url }}" width="400"></A></TD>

</TR>
</TABLE>

For the epsilon value depicted above the points, this set contains two
epsilon-connected subsets, each linked by a separate epsilon-chain
(the dotted lines).  If epsilon were larger than the largest
inter-point gap, a single epsilon chain would span the entire set, and
all eight points would be epsilon connected (and belong to a single
epsilon component).


For the purposes of this work, we define several fundamental
quantities: the number C(epsilon) and maximum diameter D(epsilon) of the <a
href="{{ '/resources/topology-defs/' | relative_url }}">epsilon-connected components</a> in a set,
as well as the number I(epsilon) of <a
href="{{ '/resources/topology-defs/' | relative_url }}">epsilon-isolated points</a>.  (An
epsilon-isolated point is an epsilon-component consisting of a single
point.)  We then compute all three quantities for a <i>range</i> of
epsilon values and deduce the topological properties of the underlying
set from their limiting behavior.


If the underlying set is <a
href="{{ '/resources/topology-defs/' | relative_url }}">connected</a>, the behavior of C and D is
easy to understand.  If epsilon is large, all points in the set are
epsilon-connected and thus it has one epsilon-component (C(epsilon)=1)
whose diameter D(epsilon) is the maximum diameter of the set.  This
situation persists until epsilon shrinks to the <i>largest</i>
interpoint spacing, at which point C(epsilon) jumps to two and D(epsilon)
shrinks to the larger of the diameters of the two subsets, and so on.
When epsilon reaches the <i> smallest</I> interpoint spacing, every
point is a epsilon-connected component, C(epsilon) = I(epsilon) is the number
of points in the data set, and D(epsilon) is zero.


If the underlying set is a disconnected <a
href="{{ '/resources/topology-defs/' | relative_url }}">fractal</a>, the behavior is similar, except
that C and D exhibit a stair-step behavior with changing epsilon
because of the scaling of the gaps in the data.  When epsilon reaches
the largest gap size in the middle-third Cantor set, for instance,
C(epsilon) will double and D(epsilon) will shrink by 1/3; this scaling will
repeat when epsilon reaches the next-smallest gap size, and so on.


This reasoning generalizes as follows.  A compact set is
<ul>
    <li> Connected iff C(epsilon) = 1 for all epsilon > 0</li>
    <li> Perfect iff I(epsilon) = 0 for all epsilon > 0</li>
    <li> Totally disconnected iff D(epsilon) -> 0 as epsilon -> 0.</li>
</ul>
Please click <a
href="http://wwwrsphysse.anu.edu.au/~vbr110/papers/nonlinearity.html">here</a>
for a paper that derives, explains, and demonstrates these results.


The results above hold for arbitrary compact sets; the next step is to
work out a way to compute them for a finite set of points.  Our
solutions to this use standard constructions from discrete geometry:

<ul>
    <li> The <a href="{{ '/resources/topology-defs/' | relative_url }}">Euclidean minimal spanning
    tree</a> (MST): the tree of minimum total (Euclidean) branch length
    that spans the data.  To construct the MST, one starts with any point
    and its nearest neighbor, adds the closest point, and repeats until
    all points are in the tree (Prim's algorithm).
    </li>
    <li> The nearest-neighbor graph (NNG): a directed graph that has an
    edge from A to B if B is the nearest neighbor of A.  To construct the
    NNG, one starts with the MST and keeps the shortest MST edge emanating
    from each point.
    </li>
</ul>

Click <a href="{{ '/resources/topology-defs/' | relative_url }}">here</a> for graphical examples of
both constructions.  Both of these algorithms are easily implemented
in R^d; computational complexity for the MST is O(n^2) in general and
O(n log n) in the plane, where n is the number of data points.


Given these constructions, computing C, D, and I is easy: one simply
counts edges.  C(epsilon), for example, is one more than the number of
MST edges that are longer than epsilon, and I(epsilon) is the the
number of NNG edges that are longer than epsilon.  Note that one has
to count NNG edges with multiplicity, since A->B does not imply B->A.
Note, too, that one only has to construct each graph once.  All of the
C and I information for different epsilons is captured in the edge
lengths of the MST and NNG.  D is somewhat harder; computing it
involves tools from statistical data analysis called binary component
trees or
<a href="http://www.winstat.com/english/function/others/cluster.htm">
dendograms</a>.

<!-- This is the algorithm that Apollo helped me with - the "binary
component tree" of chapter 2.  I suspect, though, that we reinvented a
tool in statistical data analysis called the dendogram.  (for an
example on a randomly found web page see
http://www.winstat.com/english/function/others/cluster.htm ) -->


Here's an example of these MST-based connectedness techniques in
action.  The object that we're studying here is the invariant set of a
particular <a href="{{ '/resources/topology-defs/' | relative_url }}"><i>iterated function
system</i></a> called the Sierpinski triangle.  This object, shown in
part (a) of the image below, happens to be <a href="{{ '/resources/topology-defs/' | relative_url }}">connected</a>.  If we compute a Euclidean
minimal spanning tree of this point-set data, we get the structure
shown in part (b).  Image (c) is a magnification of (b) that shows its
structural details.

<TABLE BORDER=0 CELLSPACING=8 CELLPADDING=8>
<TR ALIGN=Center>

<TD><A HREF="{{ '/assets/gifs/fig2.4.gif' | relative_url }}" width="1000"
onMouseMove="window.status='Show this image a little larger'; return
true"><IMG SRC="{{ '/assets/gifs/fig2.4.gif' | relative_url }}" width="700"></A></TD>

</TR>
</TABLE>

As described above, this MST construction is perfectly suited to
counting how many components the set contains as a function of
resolution: that is, how many lumps you can make out if your eye can
resolve 1mm, 5mm, 1cm, etc.  Results for C(epsilon), D(epsilon), and I(epsilon)
for the Sierpinski triangle are shown below, respectively, from left
to right.  The top row shows results on a data set comprised of 10,000
samples of the object; the bottom row shows results for 100,000
samples.

<TABLE BORDER=0 CELLSPACING=8 CELLPADDING=8>
<TR ALIGN=Center>

<TD><A HREF="{{ '/assets/gifs/fig2.5.gif' | relative_url }}" width="1000"
onMouseMove="window.status='Show this image a little larger'; return
true"><IMG SRC="{{ '/assets/gifs/fig2.5.gif' | relative_url }}" width="700"></A></TD>

</TR>
</TABLE>

For small epsilon - the left end of each graph - every point is its
own epsilon component, so C = I = the number of points in the data set
and D -> 0.  For large epsilon, C = 1, I = 0, and D = the diameter of
the set.  In between, the curves are smooth because <i>small</i>
changes in epsilon simply bring a <i>few</i> more lumps into focus.


Again, these results were derived simply by constructing a single
MST and counting its edges.


For <i>totally disconnected, fractal</i> sets, like the one shown
below, the behavior of C, D, and I is completely different.  In
contrast to the example above, a small change in epsilon can suddenly
resolve a large number of similar-size gaps and lumps.

<TABLE BORDER=0 CELLSPACING=8 CELLPADDING=8>
<TR ALIGN=Center>

<TD><A HREF="{{ '/assets/gifs/fig2.11.gif' | relative_url }}" width="800"
onMouseMove="window.status='Show this image a little larger'; return
true"><IMG SRC="{{ '/assets/gifs/fig2.11.gif' | relative_url }}" width="500"></A></TD>

</TR>
</TABLE>

This scaling creates a stair-step geometry in the C and D
curves:

<TABLE BORDER=0 CELLSPACING=8 CELLPADDING=8>
<TR ALIGN=Center>

<TD><A HREF="{{ '/assets/gifs/fig2.12.gif' | relative_url }}" width="1000"
onMouseMove="window.status='Show this image a little larger'; return
true"><IMG SRC="{{ '/assets/gifs/fig2.12.gif' | relative_url }}" width="700"></A></TD>

</TR>
</TABLE>


For Cantor sets, there is actually more to say about the features
of the C and D curves.  Specifically, we can characterize the growth
in C and D by a power law, C(epsilon) -> epsilon^(-gamma), and
D(epsilon) -> epsilon^delta, as epsilon -> 0.  The exponents gamma and
delta are, respectively, the disconnectedness and discreteness
indices, which are described in detail in <a
href="http://wwwrsphysse.anu.edu.au/~vbr110/papers/nonlinearity.html">this
paper</a>.  They are closely related to the fractal box-counting
dimension, d_B, via gamma <= d_B <= gamma/delta.  For simple
self-similar Cantor sets, it is often the case that the component
diameters decrease at the same rate as the gap sizes, giving delta =
1, and gamma = d_B.  Chapter 5 of Vanessa Robins's Ph.D. thesis, which
is listed at the end of this page, derives, explains, and demonstrates
these results; an associated journal paper is currently in the works,
but proofs of the above results have been elusive because these
topological quantities are not additive in the way that geometric
quantities are, which means that you can't just generalise the
exisiting fractal dimension results.


On a less formal note, these spanning tree constructions can be
quite beautiful; minimal spanning trees of isosurfaces in sea surface
vorticity, for instance, look remarkably like Miro drawings:

<TABLE BORDER=0 CELLSPACING=8 CELLPADDING=8>
<TR ALIGN=Center>

<TD><A HREF="{{ '/assets/gifs/vorticity-raw.gif' | relative_url }}" height="400"
onMouseMove="window.status='Show this image a little larger'; return
true"><IMG SRC="{{ '/assets/gifs/vorticity-raw.gif' | relative_url }}" height="200"></A></TD>

<TD><A HREF="{{ '/assets/gifs/vorticity-isolines.gif' | relative_url }}" height="400"
onMouseMove="window.status='Show this image a little larger'; return
true"><IMG SRC="{{ '/assets/gifs/vorticity-isolines.gif' | relative_url }}" height="200"></A></TD>

<TD><A HREF="{{ '/assets/images/isonegMST.jpg' | relative_url }}" height="400"
onMouseMove="window.status='Show this image a little larger'; return
true"><IMG SRC="{{ '/assets/images/isonegMST.jpg' | relative_url }}" height="200"></A></TD>

</TR>
</TABLE>

The left-hand image above shows raw vorticity data, the center image
two isosurfaces of that data, and the rightmost a MST of the blue
isosurface.

<!-- NNG of stars ... constellations? -->

In summary, these techniques provide an effective way to deduce
connectedness properties of different objects from a finite amount of
finite-precision samples of those objects.  See the papers listed at
the end of this page for more details.

<h3>Holes</h3>

One way to characterize the number and type of holes that a space
contains is via its homology groups.  The main ingredients in
constructing the homology groups are a triangulation of the original
space (called a simplicial complex) and a boundary operator that maps
k-dimensional simplices onto the (k-1)-dimensional simplices in their
boundary.


This figure illustrates the boundary operator acting on a 2-simplex to
give a 1-chain, which is necessarily a 1-cycle:


<TD><A HREF="{{ '/assets/gifs/tribdry.gif' | relative_url }}" height="300"
onMouseMove="window.status='Show this image a little larger'; return
true"><IMG SRC="{{ '/assets/gifs/tribdry.gif' | relative_url }}" height="150"></A>
</TD>

A sum of k-simplices is called a k-chain.  Any k-chain that has
zero boundary is called a k-cycle.  Some, but not all, k-cycles are
the boundaries of (k+1)-chains.  A k-dimensional hole is detected as a
k-cycle that is not the boundary of a (k+1)-chain.


Not every non-bounding cycle represents a different "hole," so we
need an equivalence relation that tells us which cycles go around the
same hole.  Indeed, two k-cycles are equivalent (or homologous) if
their difference is the boundary of a k+1-chain.  Algebraically, the
k-th homology group is the quotient group of k-cycles by k-boundaries.
The figure below shows a triangulation of an annulus.  The inner blue
1-cycle is homologous to the outer perimeter, and each represent the
homology class of the hole:


<TD><A HREF="{{ '/assets/gifs/homology.gif' | relative_url }}" height="300"
onMouseMove="window.status='Show this image a little larger'; return
true"><IMG SRC="{{ '/assets/gifs/homology.gif' | relative_url }}" height="150"></A></TD>

The k-th Betti number, b_k, is defined to be the rank of H_k, so
it gives us the number of non-equivalent non-bounding k-dimensional
cycles.  b_0 is the number of connected components.  For subsets of
3-dimensional space, b_1 is (roughly speaking) the number of
open-ended tunnels, and b_2 is the number of enclosed voids.  For the
annulus example above, b_0 = 1, b_1 = 1, and b_k = 0 for all k>=2.

<h4>Alpha Shapes</h4>

We can learn a lot about a set by computing its Betti numbers at a
sequence of resolutions, just as we did for the number of connected
components.  To do this we need triangulations that capture the
topology of the coarse-grained data.  An elegant solution is
the <a href="{{ '/resources/topology-defs.html' | relative_url }}">alpha shape algorithm</a>.


<TD><A HREF="{{ '/assets/gifs/alphashape.gif' | relative_url }}" height="600"
onMouseMove="window.status='Show this image a little larger'; return
true"><IMG SRC="{{ '/assets/gifs/alphashape.gif' | relative_url }}" height="300"></A></TD>


The first step is to fatten the data by forming its
alpha-neighborhood (a union of balls of radius alpha centered at each
data point), as shown above.  This alpha-neighborhood is then
partioned into cells by taking the intersection with the <a
href="{{ '/resources/topology-defs.html' | relative_url }}">Voronoi diagram</a>.  The alpha shape is the
geometric dual of the partitioned alpha neighborhood, where the
duality operation is the same as that used to get the <a
href="{{ '/resources/topology-defs.html' | relative_url }}">Delaunay triangulation</a> from the Voronoi
diagram.  Thus, each alpha shape is a subset of the Delaunay
triangulation.


A fast incremental algorithm due to Delfinado and Edelsbrunner
computes Betti numbers of alpha shapes in R^2 and R^3.  See <a
href="http://www.cs.duke.edu/~edels/">Edelsbrunner's home page</a>
for more details.


Below on the left is an example alpha shape of 10^4 points on the
Sierpinski triangle. The blue outline is the border of the alpha
neighbourhood and the orange is the corresponding sub-complex of the
Delaunay triangulation.  In the graphs on the right we plot the number
of connected components b_0(alpha) in blue and number of holes
b_1(alpha) in red.


<TD><A HREF="{{ '/assets/gifs/strishape.gif' | relative_url }}" height="600"
onMouseMove="window.status='Show this image a little larger'; return
true"><IMG SRC="{{ '/assets/gifs/strishape.gif' | relative_url }}" height="300"></A> <A
HREF="{{ '/assets/gifs/stridata.gif' | relative_url }}" height="600" onMouseMove="window.status='Show
this image a little larger'; return true"><IMG SRC="{{ '/assets/gifs/stridata.gif' | relative_url }}"
height="300"></A></TD>


The number of components is the same as we found using the MST above.
The number of holes exhibits staircase-growth as alpha decreases.
This is exactly what we expect from the self-similar construction of
the Sierpinski triangle.  As we decrease alpha further, b_1(alpha)
reaches a maximum and then decays as the edges bridging the narrow
necks are removed from the alpha complex.

<h4>Persistent Betti numbers</h4>

The fractal shown below to the left is disconnected, and consists of
infinitely many line segments. Topologically, therefore, there are no
loops in this fractal. However, the geometry of the set creates holes
in the alpha-neighborhoods:


<TD><A HREF="{{ '/assets/gifs/disconshape.gif' | relative_url }}" height="600"
onMouseMove="window.status='Show this image a little larger'; return
true"><IMG SRC="{{ '/assets/gifs/disconshape.gif' | relative_url }}" height="300"></A> <A
HREF="{{ '/assets/gifs/discondata.gif' | relative_url }}" height="600" onMouseMove="window.status='Show
this image a little larger'; return true"><IMG SRC="{{ '/assets/gifs/discondata.gif' | relative_url }}"
height="300"></A></TD>


The disconnected nature of the data is seen in the staircase
growth of the blue curve (on the right) which counts the number of
connected components.  The graph of the number of holes (in red) shows
that more holes are resolved as alpha decreases.  What this graph
fails to reveal however, is that the larger holes also disappear.  The
value of alpha for the neighborhood on the left is approximately 0.1.
We can see three holes, and the graph of b_1 on the right records
this.  For alpha=0.2, the b_1 data shows there was a single hole.
We can see that it would have been in the center of the fractal, but
it is no longer present at the smaller alpha value chosen for the
figure on the left.


This effect makes it difficult to make a correct diagnosis of the
underlying topology.  It does, however, give us geometric information
about the embedding of the set in the plane, which may be useful in
the context of some applications.


Mathematically, the problem is resolved by incorporating
information about how the fractal maps inside its alpha-neighbourhood,
or how a smaller neighbourhood maps inside a larger one.  This leads
to the definition of a <i>persistent Betti number</i>, which was
introduced in V. Robins, "Towards computing homology from finite
approximations," <i>Topology Proceedings</i> <b>24</b> (and, somewhat
later, by Edelsbrunner and colleagues in
Disc. Comp. Geom. <b>28</b>:511-533): for epsilon < alpha,
b_k(epsilon,alpha) is the number of holes in the epsilon-neighborhood
that do not get filled in by the alpha-neighborhood.  Obviously, this is a 
function of epsilon:


<TD><A HREF="{{ '/assets/gifs/oc.gif' | relative_url }}" width="800" onMouseMove="window.status='Show
this image a little larger'; return true"><IMG SRC="{{ '/assets/gifs/oc.gif' | relative_url }}"
width="600"></A></TD>


If one only has point-cloud data, all of these concepts become a bit
more complicated.  In that situation, the first step is to build
a <i>simplicial complex</i> to describe the underlying manifold of
which the data are a (perhaps noisy) sample: that is, to reconstruct
the solid object of which the points are samples.  A simplicial
complex is, loosely speaking, a triangulation. The data points are the
vertices, edges (one-simplices) join those vertices, two-simplices
cover the faces, and so on.  There are many ways to build a complex.
In a Cech complex, there is an edge between two vertices if the two
balls of radius epsilon centered at the vertices intersect.  The image
(a) below shows a Cech complex constructed from a trajectory from a
dynamical system.

<TD><A HREF="{{ '/assets/images/ida-fig2.png' | relative_url }}" width="800" onMouseMove="window.status='Show
this image a little larger'; return true"><IMG SRC="{{ '/assets/images/ida-fig2.png' | relative_url }}"
width="600"></A></TD>

The distance checks involved in building such a complex - between all
pairs of points, all triples, etc. - are computationally impractical
for large data sets.  An intriguing alternative is to coarse-grain the
complex, employing a subset of the data points as vertices and using
the rest to how to fill in the gaps. One way to do this is
a <i>witness complex</i>, which is determined by the time-series data,
W (the witness set) and a smaller, associated set L - the landmarks,
which form the vertices of the complex.  One connects two landmarks
with an edge if they share at least one witness; this is a
one-simplex. Similarly, if three landmarks have a common witness, they
form a two-simplex, and so on.  There are a number of technical issues
here: the definition of "share" (formally, the witness relation, which
involves a scale parameter epsilon), for instance, and the way in
which one chooses the landmarks; please see the papers below for more
details.


Images (b) and (c) above show witness complexes of the same
trajectory, constructed using different values of epsilon.


Note that the alpha-neighborhood may have extra holes that were not
present in the smaller neighborhood, but we are only interested in the
holes that exist in both.  For more details and a mathematically
rigorous definition,
see <a href="http://wwwrsphysse.anu.edu.au/~vbr110/papers/topproc.html">this
paper</a> or Vanessa's Ph.D. thesis (listed below).


The persistent Betti numbers are computable in principle using
linear algebra techniques.  Soon after the paper above came out,
Edelsbrunner and collaborators made a similar definition of persistent
Betti number for alpha shapes and devised an incremental algorithm for
their quantity.  See
<a href="http://www.cs.duke.edu/~edels/">Edelsbrunner's home page</a>
for more details.


There are two useful representations that people use to capture
information about the formation and destruction of holes in a set as
the epsilon value is varied: the <i>barcode</i> and the <i>persistence
diagram</i>.  The latter contains a single point for each hole; the x
coordinate is the epsilon at which the hole appears and the y
coordinate is the epsilon at which it disappears.  The top row of the
image below shows witness complexes of trajectories from two dynamical
systems with associated persistence diagrams shown below.


<TD><A HREF="{{ '/assets/images/persistence-diagram.png' | relative_url }}" width="800"
onMouseMove="window.status='Show this image a little larger'; return
true"><IMG SRC="{{ '/assets/images/persistence-diagram.png' | relative_url }}" width="600"></A></TD>


<h3> Some applications</h3>

Connectedness and noise are related in an interesting way, and so
the techniques described above have some practical applications to
filtering noise out of data.  In particular, these variable-resolution
connectedness studies address the scale of the separation between
neighboring points, and noise is often "larger than" data.  In that it
brings out this kind of scale separation, the MST and the associated
calculation of isolated points allows pruning of noisy points.


More formally, perfect sets by definition contain no isolated
points, and most dynamical systems that are of practical interest have
attractors that are perfect sets, so any isolated points in data from
such systems are likely to be spurious.  


This is particularly useful because simple low-pass filtering of
data from chaotic systems - "bleaching" - is a very bad idea; look in
the <a href="http://xyz.lanl.gov">xyz.lanl.gov</a> nonlinear sciences
p/reprint database for papers by J. Doyne Farmer if this doesn't make
sense to you.


Below, to the left, is an experimentally measured trajectory of a
chaotic pendulum.  The bob angle was measured every several hundred
milliseconds, and delay-coordinate embedding was used on this scalar
data to reconstruct a diffeomorphic image of the attractor.  The red
points denote points that were altered by experimental error in the
angle sensor.  To the right is a close-up of the MST of this data set.
Note how this construction makes the noisy points obvious: they are
far from the rest of the trajectory, and in a transverse direction:

<TABLE BORDER=0 CELLSPACING=8 CELLPADDING=8>
<TR ALIGN=Center>

<TD><A HREF="{{ '/assets/images/pend1.jpg' | relative_url }}" height="500"
onMouseMove="window.status='Show this image a little larger'; return
true"><IMG SRC="{{ '/assets/images/pend1.jpg' | relative_url }}" height="300"></A></TD>

<TD><A HREF="{{ '/assets/images/pendMST.jpg' | relative_url }}" height="500"
onMouseMove="window.status='Show this image a little larger'; return
true"><IMG SRC="{{ '/assets/images/pendMST.jpg' | relative_url }}" height="300"></A></TD>

</TR>
</TABLE>


On the C(epsilon) and I(epsilon) graphs, this kind of noise
manifests as an extra shoulder on the curves:

<TABLE BORDER=0 CELLSPACING=8 CELLPADDING=8>
<TR ALIGN=Center>

<TD><A HREF="{{ '/assets/images/pendCIdata.jpg' | relative_url }}" width="600"
onMouseMove="window.status='Show this image a little larger'; return
true"><IMG SRC="{{ '/assets/images/pendCIdata.jpg' | relative_url }}" width="400"></A></TD>

</TR>
</TABLE>

This suggests a way to remove these noisy points from the data set:
one simply prunes MST edges that are longer than the epsilon value at
the left-hand edge of the shoulder.  The 2004 <i>CHAOS</i> paper cited
below describes these results in more detail.  There is an obvious
caveat.  If the amplitude of the noise is small, and it acts <i>
along</i> the trajectory, none of these conclusions hold, and this
scheme will not be a useful filter.


We have also applied our MST-based connectedness techniques to a
 number of other systems, including:

<ul>
    <li> distinguishing different types of topological scaling in fractals
    of the same dimension (click <a
    href="http://wwwrsphysse.anu.edu.au/~vbr110/papers/physicad.html">here</a>
    or <a
    href="http://wwwrsphysse.anu.edu.au/~vbr110/papers/topproc.html">here</a>
    for references.
    </li>
    <li>
    finding the point at which the invariant tori in a symplectic map
    break down (also addressed in Vanessa's Ph.D. thesis, listed below).
    </li>
    <!-- I've not made any concrete applications other than the ones
    you've listed.  am starting to investigate betti number signatures of
    point patterns in an analogous way to morphological measures in
    stochastic geometry, but it's probably a bit premature to put that on
    the web page. -->
</ul>

On a related note: if a dynamical system is continuous, then nearby
points in its state space will evolve in similar directions.  One can
use the contrapositive of this notion to segment multi-regime
time-series data.  Specifically, <i>nearby</i> points that evolve
in <i> different
</i> directions are probably operating under the influence of
different dynamics:


<TABLE BORDER=0 CELLSPACING=8 CELLPADDING=8>
<TR ALIGN=Center>
<TD><A HREF="{{ '/assets/images/regimesketch.jpg' | relative_url }}" width="400"
onMouseMove="window.status='Show this image a little larger'; return
true"><IMG SRC="{{ '/assets/images/regimesketch.jpg' | relative_url }}" width="300"></A></TD>
</TR>
</TABLE>


In order to exploit this idea to pull a signal apart into its
different regimes, one must come up with sensible approximations of
"nearby" and "different" in the sentences above.  Another challenge is
that the components - clumps of "nearby" points - may overlap, causing
their trajectories to
<i>locally</i> coincide.


The 2011 <i>CHAOS</i> paper cited below demonstrates these ideas in
the context of IFS, discrete-time dynamical systems in which each time
step corresponds to the application of one of a finite collection of
maps.  In two examples - a Henon IFS and an experimental time series
representing computer performance data - this segmentation algorithm
accurately identifies the times at which the regime switches occur and
determines the number and form of the deterministic components
themselves.


Finding holes in data sets has all sorts of interesting applications.
The 2004 and 2017 <i>Intelligent Data Analysis</i> papers cited below,
for exasmple, describe how these techniques can be used to
characterize the distribution of melt ponds on the arctic ice sheet,
to find leads and channels in the icepack, and to find safe paths
through that icepack for a given size vessel and distinguish between
the same note played on different musical instruments.


There are many other interesting applications of computational
topology.  Here are a few that we've thought about:
<ul>
    <li>
    many other classification and change-point detection tasks, such
    as identifying whether a time series comes from a Lorenz system (two
    holes) or a Rossler system (one hole).
    </li>
    <li>
    <a href="{{ '/past_projects/sunspots/' | relative_url }}">characterizing sunspot shape</a> for the
    purposes of solar-flare prediction.</li>
    <li> studying <a href="{{ '/current_project/bees/' | relative_url }}">how bees cluster</a>.
    </li>
</ul>


<h3> People</h3>
<ul>
    <li>
    <a href="http://wwwrsphysse.anu.edu.au/~vbr110/vbr.html"> Vanessa
    Robins</a>, who pioneered most of the ideas described on this page
    during her Ph.D. in Applied Mathematics, is now a lecturer at the
    Australian National University.
    </li>
    <li>
    Zach Alexander developed topology-based techniques for analyzing
    computer-performance data as part of his PhD thesis, then took a
    position at Microsoft Research.
    </li>
    <li>
    Nikki Sanderson developed metrics for comparing the homology of
    embedded time series for the purposes of classification and
    change-point detection.
    </li>
    <li>
    PhD student Sam Molnar optimized Nikki's code and did the
    performance study presented in the 2017 IDA paper cited below.
    </li>
    <li>
    PhD student Varad Deshmukh wrote code to deploy all of this in
    real time.
    </li>
    <li>
    <a href="{{ '/' | relative_url }}"> Liz Bradley</a>, Professor of Computer
    Science.
    </li>
    <li>
    <a href="http://amath.colorado.edu/faculty/jdm/Home.html"> Jim
    Meiss</a>, Professor of Applied Mathematics.
    </li>
    <li> Undergraduate research assistants Apollo Hogan, Justin Tyse, Jack
    Spicer, and (especially) Elliot Shugerman wrote a lot of great code
    for this project.
    </li>
</ul>


<h3> Papers and talks</h3>
<ul>
    <li>
    A <a href="http://www.ima.umn.edu/videos/?id=2573"> talk that Liz
    gave about this work</a> at
    the <a href="http://www.ima.umn.edu/2013-2014/W2.10-14.14/"> IMA
    Workshop on Algebraic Topology in Dynamics, Differential Equations,
    and Experimental Data </a>, February 10-14, 2014
    </li>
    <li>
    N.  Sanderson, E. Shugerman, S. Molnar, J.  D. Meiss, and
    E. Bradley, "Computational Topology Techniques for Characterizing
    Time-Series Data,"
    <i> <a href="http://www.dcs.bbk.ac.uk/ida2017/">IDA-17 (Proceedings of
    the 16th International Symposium on Intelligent Data
    Analysis)</a></i>, London, October 2017.  Preprint
    on <a href="">arxiv</a> and code
    available <a href="https://github.com/lizbradley/PHETS"> here</a>
    (look for the ida2017 repo).
    </li>
    <li>
    The presentations at the Topological Data Analysis workshop that
    we organized at the 2017 SIAM Snowbird meeting:
    <a href="https://www.pathlms.com/siam/courses/4812/sections/6816">part I</a> and
    <a href="https://www.pathlms.com/siam/courses/4812/sections/6819">part II</a>
    </li>
    <li>
    Z. Alexander, <i>A Topology-Based Approach for Nonlinear
    Time-Series Analysis with Applications in Computer Performance
    Analysis</i>, Ph.D. thesis, University of Colorado, 2012.
    </li>
    <li>
    Z. Alexander, E. Bradley, J. Garland and
    J. Meiss, <a href="http://chaos.aip.org/resource/1/chaoeh/v22/i2/p023103_s1?isAuthorized=no">
    "Iterated Function System Models in Data Analysis: Detection and
    Separation,"</a> <i> Chaos </i>
    <b> 22</b>:023103 (2012).  Preprint from
    <a href="http://arxiv.org/abs/1108.3105">arxiv</a>.
    </li>
    <li>
    J. Garland, E. Bradley, and J. Meiss,
    <a href="http://www.sciencedirect.com/science/article/pii/S0167278916000464">
    "Exploring the topology of dynamical reconstructions,"</a> 
    <i>Physica D</i> <b>334</b>:49-59 (2016).  Preprint from <a href="
    http://arxiv.org/abs/1506.01128">arxiv</a>.
    </li>
    <li>
    Z. Alexander, E. Bradley, J. D. Meiss, and N.
    Sanderson, <a href="{{ '/assets/papers/SIAM-JDS-2015.pdf' | relative_url }}"> "Simplicial
    Multivalued Maps and the Witness Complex for Dynamical Analysis of
    Time Series"</a> <i>SIAM Dynamical Systems</i> <b>14</b>:1278-1307
    (2015).  Preprint from <a href="
    http://arxiv.org/abs/1406.2245">arxiv</a>.
    </li>
    <li>
    V. Robins, J. Abernethy, N.  Rooney, and
    E. Bradley, <a href="{{ '/assets/papers/ida03.pdf' | relative_url }}">
    "Topology and Intelligent Data Analysis"</a>, <i> Intelligent Data
    Analysis</i>
    <b> 8</b>:505-515 (2004)
    </li>
    <li>
    V. Robins, N. Rooney, and E. Bradley, "Topology-Based Signal
    Separation," <i> Chaos </i> <b> 14</b>:305-316 (2004)
    </li>
    <li>
    V. Robins, J. D. Meiss, and E. Bradley, <a
    href="http://wwwrsphysse.anu.edu.au/~vbr110/papers/nonlinearity.html">
    "Computing Connectedness: an Exercise in Computational Topology,"</a>
    <i> Nonlinearity</i>, <b>11</b>:913-922 (1998).
    </li>
    <li>
    V. Robins, J. Meiss, and
    E. Bradley, <a href="http://wwwrsphysse.anu.edu.au/~vbr110/papers/physicad.html">
    "Computing Connectedness: Disconnectedness and
    Discreteness,"</a> <i>Physica D</i> <b>139</b>:276-300 (2000).
    </li>
    <li>
    V. Robins, <a href="http://wwwrsphysse.anu.edu.au/~vbr110/papers/topproc.html">
    "Towards computing homology from finite
    approximations"</a>, <i>Topology Proceedings</i> <b>24</b> (1999).
    </li>
    <li>
    V. Robins, <i>Computational Topology at Multiple Resolutions</i>,
    Ph.D. thesis, University of Colorado, 2000.
    </li>
</ul>


<h3> Links</h3>
<ul>
    <li>
    A link to our <a href="https://github.com/lizbradley/PHETS">
    persistent homology on embedded time series (PHETS) code</a>.  If you
    find this code useful, please cite it via DOI 10.5281.zenodo.1245175.
    </li>
    <li>
    A link
    to <a href="https://sites.google.com/colorado.edu/joegeisz/"> Joe
    Geisz's website</a>, which showcases his work on his part of this
    project (look under the "Math" and "Projects" sections)
    </li>
    <li>
    The <a href="http://people.maths.ox.ac.uk/nanda/perseus/index.html">
    Perseus software</a> for computing persistent homology.
    </li>
    <li>
    The alpha shape algorithm was developed by <a
    href="http://www.cs.duke.edu/~edels/">Herbert Edelsbrunner</a>.  You
    can obtain 3D alpha-shape software from <a
    href="http://www.alphashapes.org/alpha/">this site</a> and a faster 2D
    version from <a
    href="http://www.geom.umn.edu/~mucke/GeomDir/shapes95/xabs.html">this
    site</a>.
    </li>
    <li>
    <a href="http://www.cis.ohio-state.edu/~tamaldey/">Tamal Dey</a>
    at Ohio State.
    </li>
    <li>
    <a href="http://www.cs.uwm.edu/faculty/guha/ ">Sumanta Guha</a>
    at the University of Wisconsin at Milwaukee.
    </li>
    <li>
    The <a href="http://www.eecs.wsu.edu/~axen/alpha/"> Washington
    State University computational topology group</a> led by John Hart and
    Ulrike Axen.
    </li>
    <li>
    A paper entitled <a href="http://arxiv.org/abs/cs.CG/9909001">
    "Emerging challenges in computational topology"</a>, written by the
    participants of an NSF Workshop on Computational Topology that was
    held in Florida in June of 1999.
    </li>
</ul>


<h3> Support</h3>
<ul>
    <li>
    This material is based upon work supported by the National
    Science Foundation under grant numbers SMA-0720692, CMMI-1537460,
    CMMI-1553297 and by a Packard Fellowship in Science and Engineering.
    Any opinions, findings, and conclusions or recommendations expressed
    in this material are those of the author(s) and do not necessarily
    reflect the views of these funding agencies.
    </li>
</ul>


<IMG SRC="{{ '/assets/gifs/rainbow.gif' | relative_url }}" WIDTH="350" HEIGHT="5">   
