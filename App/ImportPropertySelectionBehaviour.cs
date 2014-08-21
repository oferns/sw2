namespace App
{
    using System;
    using System.ComponentModel.Composition;
    using System.Linq;
    using System.Reflection;
    using SimpleInjector.Advanced;

    /// <summary>
    /// This class lets Simple Injector inject properties. Use only when necessary (ie when constuctor injection cannot work) 
    /// </summary>
    internal class ImportPropertySelectionBehavior : IPropertySelectionBehavior
    {
        public bool SelectProperty(Type type, PropertyInfo prop)
        {
            return prop.GetCustomAttributes(typeof(ImportAttribute)).Any();
        }
    }
}