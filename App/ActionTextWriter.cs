namespace App
{
    using System;
    using System.Diagnostics.Contracts;
    using System.IO;
    using System.Text;

    public class ActionTextWriter : TextWriter
    {
        private readonly Action<string> action;

        public ActionTextWriter(Action<string> action)
        {
            Contract.Requires<ArgumentNullException>(action != null, "action");
            this.action = action;
        }

        public override Encoding Encoding
        {
            get
            {
                return Encoding.Default;
            }
        }

        public override void Write(char[] buffer, int index, int count)
        {
            Write(new string(buffer, index, count));
        }

        public override void Write(string value)
        {
            action.Invoke(value);
        }

        [ContractInvariantMethod]
        private void ObjectInvariant()
        {
            Contract.Invariant(action != null);
        }
    }
}
