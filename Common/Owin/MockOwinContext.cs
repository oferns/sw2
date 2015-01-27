// --------------------------------------------------------------------------------------------------------------------
// <copyright file="MockOwinContext.cs" company="Sponsorworks">
//   Copyright
// </copyright>
// <summary>
//   This is a dummy class to satisfy the IoC
// </summary>
// --------------------------------------------------------------------------------------------------------------------
namespace Common.Owin
{
    using System;
    using System.Collections.Generic;
    using System.IO;

    using Microsoft.Owin;
    using Microsoft.Owin.Security;

    /// <summary>
    /// This is a dummy class to satisfy the IoC
    /// </summary>
    public class MockOwinContext : IOwinContext
    {
        /// <summary>
        /// Gets the authentication.
        /// </summary>
        /// <exception cref="NotImplementedException">
        /// Not implemented on purpose.
        /// </exception>
        public IAuthenticationManager Authentication
        {
            get
            {
                throw new NotImplementedException();
            }
        }

        /// <summary>
        /// Gets the environment.
        /// </summary>
        /// <exception cref="NotImplementedException">
        /// Not implemented on purpose.
        /// </exception>
        public IDictionary<string, object> Environment
        {
            get
            {
                throw new NotImplementedException();
            }
        }

        /// <summary>
        /// Gets the request.
        /// </summary>
        /// <exception cref="NotImplementedException">
        /// Not implemented on purpose.
        /// </exception>
        public IOwinRequest Request
        {
            get
            {
                throw new NotImplementedException();
            }
        }

        /// <summary>
        /// Gets the response.
        /// </summary>
        /// <exception cref="NotImplementedException">
        /// Not implemented on purpose.
        /// </exception>
        public IOwinResponse Response
        {
            get
            {
                throw new NotImplementedException();
            }
        }

        /// <summary>
        /// Gets or sets the trace output.
        /// </summary>
        /// <exception cref="NotImplementedException">
        /// Not implemented on purpose.
        /// </exception>
        public TextWriter TraceOutput
        {
            get
            {
                throw new NotImplementedException();
            }

            set
            {
                throw new NotImplementedException();
            }
        }

        /// <summary>
        /// The get.
        /// </summary>
        /// <param name="key">
        /// The key.
        /// </param>
        /// <typeparam name="T">
        /// The type
        /// </typeparam>
        /// <returns>
        /// The <see cref="T"/>.
        /// </returns>
        /// <exception cref="NotImplementedException">
        /// Not implemented on purpose.
        /// </exception>
        public T Get<T>(string key)
        {
            throw new NotImplementedException();
        }

        /// <summary>
        /// The set.
        /// </summary>
        /// <param name="key">
        /// The key.
        /// </param>
        /// <param name="value">
        /// The value.
        /// </param>
        /// <typeparam name="T">
        /// The type
        /// </typeparam>
        /// <returns>
        /// The <see cref="IOwinContext"/>.
        /// </returns>
        /// <exception cref="NotImplementedException">
        /// Not implemented on purpose.
        /// </exception>
        public IOwinContext Set<T>(string key, T value)
        {
            throw new NotImplementedException();
        }
    }
}