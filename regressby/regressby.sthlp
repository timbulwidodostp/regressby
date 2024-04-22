{smcl}
{* *! version 0.51  31jul2018}{...}
{viewerjumpto "Syntax" "regressby##syntax"}{...}
{viewerjumpto "Description" "regressby##description"}{...}
{viewerjumpto "Options" "regressby##options"}{...}
{viewerjumpto "Examples" "regressby##examples"}{...}
{viewerjumpto "Author" "regressby##author"}{...}
{viewerjumpto "Acknowledgements" "regressby##acknowledgements"}{...}
{title:Title}
 
{p2colset 5 19 21 2}{...}
{p2col :{hi:regressby} {hline 2}}Fast, flexible grouped regressions{p_end}
{p2colreset}{...}
 
 
 
{marker syntax}{title:Syntax}
 
{p 8 15 2}
{cmd:regressby}
depvar [indepvars] {ifin}
{weight}, by(varlist)
[{cmd:}{it:options}]
                               
 
{synoptset 30 tabbed}{...}
{synopthdr :options}
{synoptline}
 
{syntab :Main}
{synopt :{opt vce(vcetype)}}{it:vcetype} may be {bf:robust}, or {bf:cluster} {it:clustvar}.{p_end}
{synopt :{opt nocovs}}Do not compute the sampling covariances between dependent variables.{p_end}
 
{syntab :Save Output}
{synopt :{opt save(filename)}}Saves output to a .dta given by {it:filename}, restores data{p_end}

{synoptline}
{p 4 6 2}
{opt aweight}s are allowed;
see {help weight}.
{p_end}
 
 
 
{marker description}{...}
{title:Description}
 
{pstd}
{opt regressby} runs a series of grouped regressions of an independent variable (y) on a set of dependent variables (x) separately within each distinct value of grouping by-variable.

 
 
{marker options}{...}
{title:Options}
 
{dlgtab:Main}
 
{phang}
{opth vce(vcetype)} Choose a method for calculating standard errors. The default method computes asympotic OLS standard errors. The option {bf:vce}({it:robust}) computes heteroskedasticity-robust standard errors. The option {bf:vce}({it:cluster clustervar}) computes cluster-robust standard errors with clusters defined by the variable {it: clustervar}.
 
{dlgtab:Save Output}
 
{phang}
{opt save(filename)} saves the output dataset to a dataset specified by {it:filename}. If a full file path is not provided, the working directory used. If no file extension is specified, .dta is assumed.

{marker examples}{...}
{title:Examples}
 
{marker example1}{...}
{pstd}{bf:Example 1}

{pstd}Load the auto example dataset.{p_end}
{phang2}. {stata sysuse auto, clear}{p_end}

{pstd}Regress price on mpg within each value of foreign.{p_end}
{phang2}. {stata regressby price mpg, by(foreign)}{p_end}

{pstd}Examine the data.{p_end}
{phang2}. {stata list}{p_end}

{marker example2}{...}
{pstd}{bf:Example 2}

{pstd}Load the life expectancy by country example dataset.{p_end}
{phang2}. {stata sysuse lifeexp, clear}{p_end}

{pstd}Regress life expectancy on per-capita GDP within region, saving out to output.dta in the working directory.{p_end}
{phang2}. {stata regressby lexp gnppc, by(region) save(output.dta)}{p_end}



{pstd}{p_end}
 
{marker author}{...}
{title:Author}
 
{pstd}Michael Droste{p_end}
{pstd}thedroste@gmail.com{p_end}
 
 
 
{marker acknowledgements}{...}
{title:Acknowledgements}
 
{pstd}The present version of {cmd:regressby} is based on code written for Michael Stepner's Health Inequality Project. It was extended by Michael Droste with helpful contributions by Wilbur Townsend. Regressby also benefited from valuable advice provided by Raj Chetty.
 
