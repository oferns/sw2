namespace App.Tests
{
    using System.Web.Mvc;
    using Microsoft.VisualStudio.TestTools.UnitTesting;

    [TestClass]
    public class HomeControllerTests
    {
        [TestMethod]
        public void ShouldReturnIndexViewResult()
        {
            // Arrange
            var controller = new HomeController();

            // Act
            ActionResult result = controller.Index();

            // Assert
            Assert.IsInstanceOfType(result, typeof(ViewResult));
        }
    }
}