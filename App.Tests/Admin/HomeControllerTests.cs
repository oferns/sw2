// --------------------------------------------------------------------------------------------------------------------
// <copyright file="HomeControllerTests.cs" company="Sponsorworks">
//   Copyright
// </copyright>
// <summary>
//   Defines the HomeControllerTests type.
// </summary>
// --------------------------------------------------------------------------------------------------------------------

namespace App.Tests.Admin
{
    using System;
    using System.Web.Mvc;
    using App.Admin;
    using Data;

    using FluentAssertions;

    using Microsoft.VisualStudio.TestTools.UnitTesting;

    /// <summary>
    /// The home controller tests.
    /// </summary>
    [TestClass]
    public class HomeControllerTests
    {
        /// <summary>
        /// The should throw argument null exception when db is null.
        /// </summary>
        [TestMethod]
        public void ShouldThrowArgumentNullExceptionWhenDbIsNull()
        {
            var action = new Action(() => new HomeController(null));
            action.ShouldThrow<ArgumentNullException>();

        }

        /// <summary>
        /// The should return index view result.
        /// </summary>
        [TestMethod]
        public void ShouldReturnIndexViewResult()
        {
            // Arrange
            var controller = new HomeController(new Sponsorworks("Sponsorworks"));

            // Act
            var result = controller.Index();
            
            // Assert
            Assert.IsInstanceOfType(result, typeof(ViewResult));
        }
    }
}