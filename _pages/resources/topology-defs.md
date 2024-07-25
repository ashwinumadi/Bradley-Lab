---
layout: general_content
permalink: /resources/topology-defs/
---
<h3>Topology Definitions</h3>

<br>

A <b>connected set</b> cannot be written as the union of two closed,
disjoint subsets.


A <b>simply connected set</b> can be contracted to a point.


The <b>connected component</b> of a point is the largest connected 
subset containing that point.


A closed set is <b>disconnected</b> if it can be split into two
parts, A and B, such that min |a-b| > 0 for a in A and b in B.  (That
is, it has a gap in it.)


A <b>totally disconnected set</b> is one in which the connected
component of each point is itself, and itself alone.


A <b>closed set</b> is one that includes its boundary (or,
equivalently, all of its limit points).


A <b>perfect set</b>, common in the study of dynamical systems,
has no isolated points (or, equivalently, every point in a perfect set
is a limit point).  


An <b>epsilon chain</b></a> is a finite sequence of points x_0
... x_N that are separated by distances of epsilon or less: |x_i -
x_i+1| < eps.


Two points are <b>epsilon connected</b> if there is an epsilon
chain joining them.


Any two points in an <b>epsilon-connected set</b> can be linked
by an epsilon chain.


A <b>epsilon-isolated point</b> is an epsilon-component consisting of
a single point.


A <b>epsilon-connected component</b> is a maximal
epsilon-connected subset.


A <b>fractal</b>, loosely speaking, is an object that is self
similar: it contains "copies" of itself.  Zooming in on a fractal
always reveals more detail in the structure.  Fractals have noninteger
Hausdorff dimension.  The prototypical example is the Cantor set,
which is constructed by removing some portion of a line segment (say,
the middle third) <i>ad infinitum</i>.


A <b>tree</b> is a graph with no cycles (loops).


The <b>minimal spanning tree</b> is the tree of minimum total
branch length that spans the data.  To construct the MST, one starts
with any point and its nearest neighbor, adds the closest point, and
repeats until all points are in the tree (Prim's algorithm).  See the
center image below for an example.

<TABLE BORDER=0 CELLSPACING=8 CELLPADDING=8>
<TR ALIGN=Center>

<TD><A HREF="{{ '/assets/gifs/fig2.2.gif' | relative_url }}" height="400"
onMouseMove="window.status='Show this image a little larger'; return
true"><IMG SRC="{{ '/assets/gifs/fig2.2.gif' | relative_url }}" height="200"></A></TD>

</TR>
</TABLE>

<li> The nearest-neighbor graph (NNG) is a directed graph that has an
edge from A to B if B is the nearest neighbor of A.  To construct the
NNG, one starts with the MST and keeps the shortest MST edge emanating
from each point.  Se the right-hand image above for an example.


An <b>iterated function system</b> is a (fairly general) method for 
generating a fractal as the attracting fixed set of a multi-image map.
For example, the Sierpinski triangle, T is the set invariant under 
the union of 3 linear transformations:
  T = f1[T] u f2[T] u f3[T]
with
<ul>
<li>  f1(x,y) = (x/2, y/2)</li>
<li>  f2(x,y) = (x/2, y/2) + (1/2,0)</li>
<li>  f3(x,y) = (x/2, y/2) + (0,1/2)</li>
</ul>

The <b>Voronoi diagram</b> of a set of points p_1,...,p_N is a
division of space into regions V(p_i) such that every point x in
V(p_i) is closer to p_i than to any other data point.  See below
for an example.

<TABLE BORDER=0 CELLSPACING=8 CELLPADDING=8>
<TR ALIGN=Center>

<TD><A HREF="{{ '/assets/gifs/voronoi.gif' | relative_url }}" width="400"
onMouseMove="window.status='Show this image a little larger'; return
true"><IMG SRC="{{ '/assets/gifs/voronoi.gif' | relative_url }}" width="200"></A></TD>

</TR>
</TABLE>

The <b>Delaunay triangulation</b> is the geometric dual obtained
from the Voronoi diagram by drawing an edge between two data points if
their Voronoi cells share a face, a triangle when three cells
intersect, and so on.  See below for an example.

<TABLE BORDER=0 CELLSPACING=8 CELLPADDING=8>
<TR ALIGN=Center>

<TD><A HREF="{{ '/assets/gifs/delaunay.gif' | relative_url }}" width="400"
onMouseMove="window.status='Show this image a little larger'; return
true"><IMG SRC="{{ '/assets/gifs/delaunay.gif' | relative_url }}" width="200"></A></TD>

</TR>
</TABLE>

The <b>alpha shape algorithm</b> "fattens" a set by a radius
alpha.  It introduces a resolution parameter, alpha, to generate
subsets of the Voronoi diagram and Delaunay triangulation.  This
allows it to capture different levels of detail about an object.
Click <a
href="http://n.ethz.ch/student/fischerk/alphashapes/as/">here</a> or
<a
href="http://www.cs.uiuc.edu/whatsnew/newsletter/winter96/edelsbrunner.html">here</a>
to see some related webpages.