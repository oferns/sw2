namespace App.Tests.Guests
{
    using System.Web.Mvc;
    using App.Guests;
    using Data;
    using Microsoft.VisualStudio.TestTools.UnitTesting;

    [TestClass]
    public class HomeControllerTests
    {
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