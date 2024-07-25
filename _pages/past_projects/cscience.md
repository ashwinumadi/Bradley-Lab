---
layout: general_content
permalink: /past_projects/cscience/
---

<h2>CScience: An integrated software system for age-model construction</h2>

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-54922009-1', 'auto');
  ga('send', 'pageview');

</script>

<b>Last revised 15 December 2018</b>

<h3>Project Description</h3>

The critical first step in the analysis of paleoclimate records like ice or sediment 
cores is the construction of an <i> age model</i>, which relates the depth in a core 
to the calendar age of the material at that point:

<TABLE BORDER=0 CELLSPACING=8 CELLPADDING=8>
<TR ALIGN=Center>

<TD><A HREF="https://home.cs.colorado.edu/~lizb/cscience/reversal.jpg" height="400"
onMouseMove="window.status='Show this image a little larger'; return
true"><IMG SRC="https://home.cs.colorado.edu/~lizb/cscience/reversal.jpg"
height="300"></A></TD>

</TR>
</TABLE>


(The plot above involves data published in W. Curry, T. Marchitto, J. McManus, D. Oppo,
 K.  Laarkamp, "Millennial-scale changes in ventilation of the thermocline, intermediate, 
 and deep waters of the glacial North Atlantic", in <i>Mechanisms of Global Climate Change 
 at Millennial Time Scales</i>, AGU Geophysical Monograph Series, 1999)


The reasoning involved in age-model construction is complex, subtle, and scientifically 
demanding because the processes that control the rate of material accumulation over time, 
and that affect the core between formation and sampling, are unknown.  Generally, these 
curves are monotonic: deeper material is older.  But this is not always so. A variety of 
processes such as sea-floor slumping and glacier folding can disturb cores mechanically, 
however.  This can create "reversals," for instance, where younger material appears deeper 
in the core (cf., the 20-40cm region of the plot above).  More pernicious are the effects 
of incorrect scientific assumptions, which can bias the age model in subtle ways that are 
harder to detect.  For example, an assumption of constant sea-surface 14C reservoir age - 
its age offset from the contemporaneous atmosphere - may be erroneous, and the resulting 
age-model error may not be obvious, even to an expert.  And here things get even more 
complicated, since the atmospheric 14C history itself is derived from core data and 
does not represent ground truth.


Geoscientists approach the age-model construction problem by treating the core like a 
crime scene and asking the question: "What physical and chemical processes could have 
produced this situation, and what does that say about the timeline?"  The sheer number 
of possibilities here, coupled with the volume and complexity of the climatology data 
that is available nowadays, severely limit the scope of these investigations.  Simply 
put, it is becoming much harder to examine all of the potential relationships that may, 
or may not, be lurking in the data.


The goal of the CScience project is to remove that roadblock.  Its centerpiece is an 
integrated software tool called CSciBox, which employs artificial intelligence (AI) 
techniques to capture the knowledge of expert climatologists and help its scientist-users 
work with the varied hypotheses and large, heterogeneous digital datasets that are 
involved in age-model construction.  Since over-automation of such a complex task is 
imprudent, CSciBox acts as an intelligent assistant, iteratively working through scenarios 
under the guidance of its user.  Its output is a <i> set of possible age models for a 
given core, together with a full description of the reasoning involved in their construction</i>.


Here are plots of a couple of CSciBox age models: one (the magenta line) built using a 
linear regression on a bunch of 14C ages calibrated with the IntCal 2013 calibration 
curve (which are shown with black squares), and another (the blue fuzz) built with BACON 
from the same points.

<TABLE BORDER=0 CELLSPACING=8 CELLPADDING=8>
<TR ALIGN=Center>

<TD><A HREF="https://home.cs.colorado.edu/~lizb/cscience/front-example.jpg" height="700"
onMouseMove="window.status='Show this image a little larger'; return
true"><IMG SRC="https://home.cs.colorado.edu/~lizb/cscience/front-example.jpg"
height="500"></A></TD>

</TR>
</TABLE>


While automated reasoning about age models is an important goal, it is also important to 
develop software that scientists can use to create their <b>own</b> age models.  To that 
end, we have put a great deal of effort into developing a software system that is useful 
to current practitioners, in their current tasks.  This version of the software
-- ~20,000 lines of code, mostly in python -- is available on our
<a href="https://github.com/lizbradley/cscibox/tree/release"> github page</a>, along with 
a variety of documentation (e.g., how to install and run the code). Please click <a 
href="https://home.cs.colorado.edu/~lizb/cscience/how-to.html">here</a> for a separate 
webpage that gives a quick description of how to use that software to generate and plot 
age models like the ones above.  The video tutorials listed in the "Links" section below 
go into more detail on all of the steps involved.  You can find video demonstrations of 
CSciBox in action by clicking <a href="https://home.cs.colorado.edu/~lizb/cscience/videos.html"> here</a>.


(The <a href="https://github.com/lizbradley/cscibox/tree/hobbes"> AI-augmented version</a> 
is also available on our github page, as is <a href="https://github.com/lizbradley/cscibox/tree/master"> 
the version of the code that we continue to develop</a>.  Unless you have some computer-science 
expertise, we would not recommend using either of these versions.)


<h4>An effective software architecture for age-model construction:</h4>


All versions of CSciBox use software engineering techniques to make powerful data-management 
and computational tools accessible to scientists without requiring them to become expert 
programmers.  Users can run a variety of built-in analysis workflows that "ship" with the 
software; these include CALIB-style calibrations (with or without reservoir-age corrections), 
BACON-style interpolations, ice-flow models, etc.  Scientists can also build their own analysis 
workflows using a set of built-in computational elements: various kinds of interpolations, 
for instance, as well as BACON and the StratiCounter layer-counting tool for ice cores.  
Expert users can even plug their existing code into the system.  CScibox's cyberinfrastructure 
not only provides powerful, intuitive tools on a scientist's desktop; it is also designed to 
take full advantage of modern distributed computing infrastructure -- without placing any 
demands upon its user.  Rather, it works `behind the scenes' to transform the computations 
specified by the scientist into concurrent, distributed workflows.  (This makes BACON run 
faster from inside CSciBox than from the original source code, for example).


The examples above involve sediment cores from lakes and oceans, but CSciBox is designed to 
handle different types of cores.  Its built-in toolset includes a range of common and useful 
analysis steps for age-model construction: Calib-style calibrations, reservoir-age correction 
tools, a variety of interpolation and regression techniques, and firn & ice-flow models.  
Some of these have been re-coded from scratch; others are computational tools written by our 
geoscientist collaborators that we have "plugged in" to CSciBox. These include Mai Winstrup's 
StratiCounter, an HMM-based layer counting tool that was recently featured in
a <a href="http://www.nature.com/nature/journal/vaop/ncurrent/abs/nature14565.html"> recent 
Nature paper </a> and Maarten Blaauw's widely used Bayesian age-modelling tool, BACON.


CSciBox's ability to incorporate code modules written by others is the result of some careful 
software design.  By plugging in their code to CSciBox, a scientist-users can take advantage 
of its GUI, its "import wizard" -- which deals with pesky formatting and naming issues -- and 
its plotting facilities, all without having to write any more code. This design and implementation 
of the "plug in" architecture was not trivial, and we could not have developed it without the 
advice and assistance of Maarten and Mai.  Please see the links at the end of this page for more 
information about BACON and StratiCounter.  


Another important feature of CSciBox is its use of the <a href="http://www.lipd.net"> LiPD 
("Linked Paleo Data") standard</a> for storing data <i>and metadata</i>. CSciBox can read and 
write both LiPD and csv files, making it smoothly interoperable with most of the standard tools 
used by geoscientists.  LiPD's metadata storage capabilities support reproducibility, as they 
allow full information about provenance and processing to be stored alongside the data.


<i>Note: only the <a href="https://github.com/lizbradley/cscibox/tree/master"> "master"</a> 
branch of the code incorporates StratiCounter, and you'll
have to do a bit of extra work to get the BACON facilities in the <a 
href="https://github.com/lizbradley/cscibox/tree/release">"release"</a> branch to work.  
More information on all of that can be found on the associated github webpages.
</i>


<h4>AI reasoning about age models:</h4>


In essence, CSciBox's AI engine "wraps around" all of that machinery, using rules that 
capture expert knowledge to choose good parameter values, assess the resulting models, 
improve upon them if possible, and report its results <b> and its reasoning </b> to the 
user.  BACON, for example, uses a highly sophisticated algorithm that has dozens of 
parameters, most of which are not necessarily meaningful to geoscientists.  Because of 
this, most users simply use the default values, but that is not always a good choice.  
An expert BACON user might <i>start</i> with those values, but then tune one or more of 
them after seeing the results -- e.g., raising t_a if the model is too wiggly (t_a allows 
the distributions on individual points to have longer tails.).


CSciBox's reasoning engine, which is called Hobbes, works with a set of rules that capture 
that kind of reasoning.  In the BACON example above, for instance, it would use two rules: 
one that contains a formal definition of the geometry of wigglyness (not easy!) and another 
that lowers the appropriate parameter value if the firing of the wigglyness rule exceeds 
some threshold.


The 2017 AGU talk and 2018 PAGES article listed below give more information on CSciBox's 
automated reasoning facilities.


<h4>The path ahead:</h4>

Ultimately, we hope, CSciBox will not only help individual geoscientists analyze individual 
cores; it has the potential to transform the field of paleoclimatology by facilitating rapid, 
reproducible analysis -- and <i> synthesis</i> -- of the information in the diverse collections 
of raw data available in data archives. Cross-correlating this raw data requires recasting the 
associated chronologies on a common and consistently constructed time scale.  The
volume and heterogeneity of these datasets, coupled with the complexity of the associated analysis, 
makes that all but impossible. By making that kind of analysis possible, CScibox could not only 
help improve our understanding of past climate change, but also aid scientists in providing 
climate information that is urgently needed by decision makers.


<h3> People</h3> 

<ul> 
    <li>
    Dr. Laura Rassbach, the author of <a href="http://ace.hwr.arizona.edu">ACE's</a> reasoning 
    engine, was the primary architect of CSciBox's AI engine (Hobbes).
    </li>
    <li>
    Dr. Tom Nelson helped Laura build Hobbes.
    </li>
    <li>
    Undergraduate Izaak Weiss built CSciBox's LiPD interface and BACON facilities.  After 
    graduating in May 2018, Izaak took a position at Google.
    </li>
    <li>
    Undergraduate Suyog Soti did a great job with the released versions of the code, including 
    taking the lead on the Docker version. He too has left us for Google.</li>
    <li>
    High-school senior Rishabh Yadav built a lot of CSciBox's plotter and database facilities 
    before going off to MIT in 2016.
    </li>
    <li>
    Undergraduates Jada Ballentine, Paul Givens, David Johnson, and Josh Rahm have also contributed 
    to CSciBox's code, as have MS student Vivian Lai and PhD students Kathleen Finlinson, Brett 
    Israelsen, John Klingner, and Fernando Nobre.
    </li>
    <li>
    <a href="http://instaar.colorado.edu/people/james-w-c-white/">Prof. Jim White</a> is the ice-core 
    brains of the CScience project.  Jim's postdoc Tyler Jones has worked closely with the computer-science 
    side of the team, helping them get the ice-core science right.
    </li>
    <li>
    <a href="http://instaar.colorado.edu/~marchitt//">Prof. Tom Marchitto</a> is the ocean-sediment-core 
    brains of the CScience project.  Tom's Ph.D. student Colin Lindsay has worked closely with the 
    computer-science side of the team, helping them understand the art & science of working with ocean 
    sediment cores and radiocarbon calibration.
    </li>
    <li>
    <a href="http://www.cs.colorado.edu/~kena/">Prof. Ken Anderson </a> is the software-engineering 
    brains of the CScience project.
    </li>
    <li>
    <a href="{{ '/' | relative_url }}"> Prof. Liz Bradley</a> is the project coordinator, outreach 
    channel, and AI lead.
    </li> 
</ul>


<h3> Papers and other products</h3>

<ul>
    <li>
    The <a href="https://github.com/lizbradley/cscibox"> CSciBox github page</a>, which includes the 
    source code and documentation for the various versions of the
    code: <a href="https://github.com/lizbradley/cscibox/tree/release"> the "release" version</a>, 
    which is what most people should download, as well as <a  
    href="https://github.com/lizbradley/cscibox/tree/master">the "master" version</a>, which 
    is where we continue to work, and <a href="https://github.com/lizbradley/cscibox/tree/hobbes">
    the "hobbes" version</a>, which includes the AI engine.  <b>To cite this code, please 
    use DOI 10.5281.zenodo.1245175.</b>  Here is that citation in <a 
    href="https://home.cs.colorado.edu/~lizb/cscience/cscibox.bib">in bibtex format</a>.
    <br>
    <i> Note: we no longer have one-click installers for Windows and Mac OSX because 
    keeping them up to date meant a significant rebuilding job every time Apple or Microsoft 
    released a new OS (which happens every couple of weeks, it seems).  The Docker facilities 
    on the github page are intended as a workaround for that forward-compatibility problem.</i>
    </li>
    <li>
    A webpage that provides an <a href="https://home.cs.colorado.edu/~lizb/cscience/how-to.html">
    overview of how to use CSciBox</a> and a <a 
    href="https://home.cs.colorado.edu/~lizb/cscience/videos.html"> collection of short tutorial 
    videos</a>.  You can also find those videos on the <a 
    href="https://www.youtube.com/channel/UCkJT2GfWbckPsTmQh811Beg"> LinkedEarth youtube channel</a>.
    </li>
    <li>
    J. Garland, T. Jones, E. Bradley, R. James and J. W. C. White, <a 
    href="https://link.springer.com/chapter/10.1007%2F978-3-319-46349-0_30"> "A First Step 
    Toward Quantifying the Climate's Information Production Over the Last 68,000 Years,"
    </a> <i>IDA-16 (Proceedings of the 12th International Symposium on Intelligent Data 
    Analysis)</i>, Stockholm, October 2016.  Springer, <i>Lecture Notes in Computer Science
    </i> volume 9897.
    </li>
    <li>
    L. Rassbach de Vesine, K. Anderson, M. Zreda, C. Zweck, and E. Bradley, <a 
    href="{{ '/assets/papers/AAAI-fall2013.pdf' | relative_url }}">"Forensic Reasoning
    about Paleoclimatology,"</a> the <i>AAAI Fall Symposium on Discovery Informatics,</i> 
    Arlington VA, November 2013.
    </li>
    <li>
    A post about CSciBox on the <a 
    href="http://linked.earth/featured-partnership-cscience-linkedearth/">LinkedEarth blog</a>
    </li>
    <li> Presentations about the CScience project:
    <ul>
        <li>
        The <a href="https://agu.confex.com/agu/fm14/meetingapp.cgi#Paper/11138"> 2014 
        AGU Fall Meeting</a>: E. Bradley, K. Anderson, T. Marchitto, L. Rassbach de 
        Vesine, J. White, and David M. Anderson, "CSciBox: A Software System for Age-
        Model Construction and Evaluation." Click <a 
        href="https://home.cs.colorado.edu/~lizb/cscience/agu2014.pdf">here</a> for a copy of this poster.
        </li>
        <li>
        A <a href="http://youtu.be/nzWiifkTOMo"> 2014 Earthcube "cyber for paleo" 
        webinar</a>
        </li>
        <li>
        The <a href="https://agu.confex.com/agu/fm15/meetingapp.cgi/Paper/62111"> 
        2015 AGU Fall Meeting</a>: E. Bradley, K. Finlinson, J. White, K. Anderson, 
        T. Marchitto, L. Rassbach de Vesine, T. Jones, C. Lindsay, and B.  Israelsen, 
        "CSciBox: An Intelligent Assistant for Dating Ice and Sediment Cores." Click 
        <a href="https://home.cs.colorado.edu/~lizb/cscience/agu2015.pdf">here</a> for 
        a copy of this poster.
        </li>
        <li>
        The <a href="https://icerm.brown.edu/topical_workshops/tw15-6-mds/"> 2015 ICERM 
        workshop on "Mathematics and Data Science"</a>: K. Finlinson and M. Winstrup, 
        "Automated Dating of Ice Cores." Click <a href=
        "https://home.cs.colorado.edu/~lizb/cscience/icerm.pdf">here</a> for a copy of this poster.
        </li>
        <li>
        The <a href="https://agu.confex.com/agu/fm16/meetingapp.cgi/Paper/141679"> 
        2016 AGU Fall Meeting</a>: E. Bradley, I. Weiss, N. McKay, J. Emile-Geay, L. 
        Rassbach de Vesine, K. Anderson, J. White. and T. Marchitto, "LiPD and CSciBox: 
        A Case Study in Why Data Standards are Important for Paleoscience." Click <a
        href="https://home.cs.colorado.edu/~lizb/cscience/agu2016.pdf">here</a> for a 
        copy of this poster and <a href="https://home.cs.colorado.edu/~lizb/cscience/BradleyAGU2016.pdf">
        here</a> for a copy of the slides for this talk.
        </li>
        <li>
        The <a href="https://agu.confex.com/agu/fm17/meetingapp.cgi/Paper/261805"> 2017 AGU 
        Fall Meeting</a>: E. Bradley, K. Anderson, L. Rassbach de Vesine, V.  Lai, T.  
        Marchitto, T. Nelson, I. Weiss, and J. White, "An Artificial Intelligence Tool 
        for Complex Age-Depth Models."  Click <a 
        href="https://home.cs.colorado.edu/~lizb/cscience/agu2017.pdf">here</a> for a 
        copy of the slides for this talk.
        </li>
    </ul>
    </li>
    <li>
    A tarball for <a href="https://home.cs.colorado.edu/~lizb/cscience/crossbacon.tgz"> 
    cross-compiling BACON</a> from Linux to Windows using minGW.  (If 
    you don't know what those words mean, don't worry about it.)
    </li>
</ul>

<h3> Links</h3>


<ul>
    <li>
    An <a href="https://home.cs.colorado.edu/~lizb/cscience/how-to.html">overview 
    of how to useCSciBox</a> (screenshots and text) and a <a 
    href="https://home.cs.colorado.edu/~lizb/cscience/videos.html"> collection of 
    short tutorial videos</a> that elaborate on those steps.
    </li>
    <li>
    <a href="http://www.ncdc.noaa.gov/paleo/data.html"> NOAA's World Data Center 
    for Paleoclimatology</a>, a huge repository of climate proxy data.
    </li>
    <li> The homepage for <a href="http://chrono.qub.ac.uk/blaauw/bacon.html"> 
    Bacon</a>, Maarten Blaauw's Bayesian age-modeling software, a version of which is
    available as computational component inside CSciBox.
    </li>
    <li>
    <a href="https://www.researchgate.net/profile/Mai_Winstrup">Mai Winstrup, 
    the author of StratiCounter</a>, an HMM-based layer-counter that is available 
    as a computational component inside CSciBox.  Here is <a 
    href="http://www.nbi.ku.dk/english/research/phd_theses/phd_theses_2011/mai_winstrup/"> 
    Mai's PhD thesis</a>.</li>
    <li>
    The homepage for <a href="http://www.lipd.net"> LiPD</a> ("Linked Paleo Data", 
    a standard for paleo data) and a <a 
    href="https://www.authorea.com/users/17200/articles/19163/_show_article"> good 
    paper about it</a>.
    </li>
    <li>
    The homepages for <a href="http://linked.earth"> the LinkedEarth project</a> 
    (an NSF EarthCube-funded project aiming to better organize and share Earth 
    Science data, especially paleoclimate data) and the <a 
    href="http://www.pastglobalchanges.org"> PAGES</a> project (an international 
    effort to coordinate and promote past global change research).
    </li>
</ul>


<h3> Support</h3>

This material is based upon work supported by the National Science Foundation 
under Grant Number <a href="https://www.nsf.gov/awardsearch/showAward?AWD_ID=1245947&HistoricalAwards=false">
1245947</a>, entitled "INSPIRE/CREATIV: Automating Reasoning in Interpreting Climate Records of the Past."  
Any opinions, findings, and conclusions or recommendations expressed in this material are those of the 
author(s) and do not necessarily reflect the views of the National Science Foundation.

<br>
<img SRC="{{ '/assets/gifs/rainbow.gif' | relative_url }}" WIDTH="350" HEIGHT="5">   

