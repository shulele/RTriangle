pkgname <- "RTriangle"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
base::assign(".ExTimings", "RTriangle-Ex.timings", pos = 'CheckExEnv')
base::cat("name\tuser\tsystem\telapsed\n", file=base::get(".ExTimings", pos = 'CheckExEnv'))
base::assign(".format_ptime",
function(x) {
  if(!is.na(x[4L])) x[1L] <- x[1L] + x[4L]
  if(!is.na(x[5L])) x[2L] <- x[2L] + x[5L]
  options(OutDec = '.')
  format(x[1L:3L], digits = 7L)
},
pos = 'CheckExEnv')

### * </HEADER>
library('RTriangle')

base::assign(".oldSearch", base::search(), pos = 'CheckExEnv')
base::assign(".old_wd", base::getwd(), pos = 'CheckExEnv')
cleanEx()
nameEx("RTriangle-package")
### * RTriangle-package

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: RTriangle-package
### Title: Generate 2D Quality meshes and constrained Delaunay
###   triangulations
### Aliases: RTriangle-package RTriangle
### Keywords: package

### ** Examples

## Create an object with a concavity
p <- pslg(P=rbind(c(0, 0), c(0, 1), c(0.5, 0.5), c(1, 1), c(1, 0)),
          S=rbind(c(1, 2), c(2, 3), c(3, 4), c(4, 5), c(5, 1)))
## Plot it
plot(p)
## Triangulate it
tp <- triangulate(p)
plot(tp)
## Triangulate it subject to minimum area constraint
tp <- triangulate(p, a=0.01)
plot(tp)
## Load a data set containing a hole
A <- read.pslg(file.path(system.file(package = "RTriangle"), "extdata", "A.poly"))
plot(A)
## Triangulate the PSLG
tA <- triangulate(A)
plot(tA)
## Triangulate the PSLG with triangles in which no angle
## is smaller than 20 degrees
tA <- triangulate(A, q=20)
plot(tA)
## Triangulate the PSLG with triangles in which no triangle has 
## area greater than 0.001
tA <- triangulate(A, a=0.001)
plot(tA)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("RTriangle-package", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("triangulate")
### * triangulate

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: triangulate
### Title: Triangulate a Planar Straight Line Graph
### Aliases: triangulate

### ** Examples

## Create an object with a concavity
p <- pslg(P=rbind(c(0, 0), c(0, 1), c(0.5, 0.5), c(1, 1), c(1, 0)),
          S=rbind(c(1, 2), c(2, 3), c(3, 4), c(4, 5), c(5, 1)))
## Plot it
plot(p)
## Triangulate it
tp <- triangulate(p)
plot(tp)
## Triangulate it subject to minimum area constraint
tp <- triangulate(p, a=0.01)
plot(tp)
## Load a data set containing a hole
A <- read.pslg(file.path(system.file(package = "RTriangle"), "extdata", "A.poly"))
plot(A)
## Produce a constrained Delaunay triangulation of the PSLG
tA <- triangulate(A, Y=TRUE)
plot(tA)
## Produce a conforming Delaunay triangulation of the PSLG
tA <- triangulate(A, D=TRUE)
plot(tA)
## Triangulate the PSLG with triangles in which no angle
## is smaller than 20 degrees
tA <- triangulate(A, q=20)
plot(tA)
## Triangulate the PSLG with triangles in which no triangle has 
## area greater than 0.001
tA <- triangulate(A, a=0.001)
plot(tA)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("triangulate", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
### * <FOOTER>
###
cleanEx()
options(digits = 7L)
base::cat("Time elapsed: ", proc.time() - base::get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
