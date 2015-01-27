// --------------------------------------------------------------------------------------------------------------------
// <copyright file="ActionTextWriter.cs" company="Sponsorworks">
//   Copyright
// </copyright>
// <summary>
//   This class is used for logging Linq SQL queries to the Trace output
// </summary>
// --------------------------------------------------------------------------------------------------------------------

namespace Common.Tracing
{
    using System;
    using System.Diagnostics.Contracts;
    using System.IO;
    using System.Text;

    /// <summary>
    /// This class is used for logging Linq SQL queries to the Trace output
    /// </summary>
    public class ActionTextWriter : TextWriter
    {
        /// <summary>
        /// The action
        /// </summary>
        private readonly Action<string> action;

        /// <summary>
        /// Initialises a new instance of the <see cref="ActionTextWriter"/> class. 
        /// </summary>
        /// <param name="action">
        /// The action.
        /// </param>
        public ActionTextWriter(Action<string> action)
        {
            Contract.Requires<ArgumentNullException>(action != null, "action");
            this.action = action;
        }

        /// <summary>
        /// When overridden in a derived class, returns the character encoding in which the output is written.
        /// </summary>
        public override Encoding Encoding
        {
            get
            {
                return Encoding.Default;
            }
        }

        /// <summary>
        /// The write.
        /// </summary>
        /// <param name="buffer">
        /// The buffer.
        /// </param>
        /// <param name="index">
        /// The index.
        /// </param>
        /// <param name="count">
        /// The count.
        /// </param>
        public override void Write(char[] buffer, int index, int count)
        {
            this.Write(new string(buffer, index, count));
        }

        /// <summary>
        /// The write.
        /// </summary>
        /// <param name="value">
        /// The value.
        /// </param>
        public override void Write(string value)
        {
            this.action.Invoke(value);
        }

        /// <summary>
        /// The object invariant.
        /// </summary>
        [ContractInvariantMethod]
        private void ObjectInvariant()
        {
            Contract.Invariant(this.action != null);
        }
    }
}