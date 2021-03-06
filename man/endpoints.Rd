% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/services.R
\name{endpoints}
\alias{endpoints}
\alias{getEndpoints}
\title{List AzureML Web Service Endpoints}
\usage{
endpoints(ws, service_id, endpoint_id, host = ws$.management_endpoint)

getEndpoints(ws, service_id, endpoint_id, host = ws$.management_endpoint)
}
\arguments{
\item{ws}{An AzureML workspace reference returned by \code{\link{workspace}}.}

\item{service_id}{A web service Id, for example returned by \code{\link{services}}; alternatively a row from the services data frame identifying the service.}

\item{endpoint_id}{An optional endpoint id. If supplied, return the endpoint information for just that id. Leave undefined to return a data.frame of all end points associated with the service.}

\item{host}{The AzureML web services URI}
}
\value{
Returns a data.frame with variables:
\itemize{
 \item Name
 \item Description
 \item CreationTime
 \item WorkspaceId
 \item WebServiceId
 \item HelpLocation
 \item PrimaryKey
 \item SecondaryKey
 \item ApiLocation
 \item Version
 \item MaxConcurrentCalls
 \item DiagnosticsTraceLevel
 \item ThrottleLevel
 }
Each row of the data.frame corresponds to an end point.
}
\description{
Return a list of web services endpoints for the specified web service id.
}
\note{
\code{getEndPoints} is an alias for \code{endpoints}.
}
\examples{
\dontrun{
workspace_id <- ""          # Your AzureML workspace id
authorization_token <- ""   # Your AsureML authorization token

ws <- workspace(
  id = workspace_id,
  auth = authorization_token
)

s <- services(ws)
endpoints(ws, s$Id[1])

# Note that you can alternatively just use the entire row that
# describes the service.
endpoints(ws, s[1,])

# Equivalent:
getEndpoints(ws, s$Id[1])
}
}
\seealso{
Other discovery functions: \code{\link{discoverSchema}};
  \code{\link{endpointHelp}}; \code{\link{getWebServices}},
  \code{\link{services}}; \code{\link{workspace}}
}

