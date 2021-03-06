% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mime.R
\name{mime}
\alias{mime}
\alias{to.mime}
\alias{from.mime}
\alias{cc.mime}
\alias{bcc.mime}
\alias{subject.mime}
\alias{text_body}
\alias{html_body}
\alias{attach_part}
\alias{attach_file}
\title{Create a mime formatted message object}
\usage{
mime(..., attr = NULL, body = NULL, parts = list())

\method{to}{mime}(x, vals, ...)

\method{from}{mime}(x, val, ...)

\method{cc}{mime}(x, vals, ...)

\method{bcc}{mime}(x, vals, ...)

\method{subject}{mime}(x, val, ...)

text_body(mime, body, ...)

html_body(mime, body, ...)

attach_part(mime, part, ...)

attach_file(mime, filename, type = NULL, ...)
}
\arguments{
\item{...}{additional parameters to put in the attr field}

\item{attr}{attributes to pass to the message}

\item{body}{Message body.}

\item{parts}{mime parts to pass to the message}

\item{x}{the object whose fields you are setting}

\item{vals}{one or more values to use, will be joined by commas}

\item{val}{the value to set}

\item{mime}{message.}

\item{part}{Message part to attach}

\item{filename}{name of file to attach}

\item{type}{mime type of the attached file}
}
\description{
These functions create a MIME message. They can be created atomically using
`mime()` or iteratively using the various accessors.
}
\examples{
# using the field functions
msg = mime() \%>\%
 from("james.f.hester@gmail.com") \%>\%
 to("asdf@asdf.com") \%>\%
 text_body("Test Message")

# alternatively you can set the fields using mime(), however you have
#  to use properly formatted MIME names
msg = mime(From="james.f.hester@gmail.com",
                   To="asdf@asdf.com") \%>\%
        html_body("<b>Test<\\b> Message")
}
\concept{mime}
