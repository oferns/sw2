namespace App
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
        public IAuthenticationManager Authentication
        {
            get
            {
                throw new NotImplementedException();
            }
        }

        public IDictionary<string, object> Environment
        {
            get
            {
                throw new NotImplementedException();
            }
        }

        public IOwinRequest Request
        {
            get
            {
                throw new NotImplementedException();
            }
        }

        public IOwinResponse Response
        {
            get
            {
                throw new NotImplementedException();
            }
        }

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

        public T Get<T>(string key)
        {
            throw new NotImplementedException();
        }

        public IOwinContext Set<T>(string key, T value)
        {
            throw new NotImplementedException();
        }
    }
}