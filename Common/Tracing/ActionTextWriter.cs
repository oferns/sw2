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
        /// Initializes a new instance of the <see cref="ActionTextWriter"/> class.
        /// </summary>
        /// <param name="action">The action.</param>
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

        public override void Write(char[] buffer, int index, int count)
        {
            this.Write(new string(buffer, index, count));
        }

        public override void Write(string value)
        {
            this.action.Invoke(value);
        }

        [ContractInvariantMethod]
        private void ObjectInvariant()
        {
            Contract.Invariant(this.action != null);
        }
    }
}