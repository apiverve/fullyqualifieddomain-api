using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.FullyQualifiedDomain
{
    /// <summary>
    /// Query options for the Fully Qualified Domain API
    /// </summary>
    public class FullyQualifiedDomainQueryOptions
    {
        /// <summary>
        /// The IP address to get the fully qualified domain name of
        /// Example: 199.30.24.0
        /// </summary>
        [JsonProperty("ip")]
        public string Ip { get; set; }
    }
}
