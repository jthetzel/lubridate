\name{tz}
\title{Get/set time zone component of a date-time.}
\usage{tz(x)}

\description{
  Get/set time zone component of a date-time.
}

\details{
  Date-time must be a POSIXct, POSIXlt, Date, chron,
  yearmon, yearqtr, zoo, zooreg, timeDate, xts, its, ti,
  jul, timeSeries, and fts objects.

  Setting tz does not update a date-time to display the
  same moment as measured at a different time zone. See
  \code{\link{with_tz}}. Setting a new time zone creates a
  new date-time. The numerical value of the hours element
  stays the same, only the time zone attribute is replaced.
  This creates a new date-time that occurs an integer value
  of hours before or after the original date-time.

  If x is of a class that displays all date-times in the
  GMT timezone, such as chron, then R will update the
  number in the hours element to display the new date-time
  in the GMT timezone.

  For a description of the time zone attribute, see
  \code{\link[base]{DateTimeClasses}}.
}
\alias{tz}
\alias{tz<-}
\value{the first element of x's tzone attribute vector as a character string. If no tzone 
attribute exists, tz returns "GMT".}
\keyword{utilities}
\keyword{manip}
\keyword{chron}
\keyword{methods}
\arguments{
  \item{x}{a date-time object}
}
\examples{x <- now()
tz(x) 
tz(x) <- "GMT"  
x
tz(x) <- "America/New_York"
x
Sys.setenv(TZ = "GMT")
x
tz(x)
Sys.unsetenv("TZ")}
