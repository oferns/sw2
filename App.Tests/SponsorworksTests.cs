namespace App.Tests
{
    using Microsoft.VisualStudio.TestTools.UnitTesting;

    [TestClass]
    public class SponsorworksTests
    {
        [TestMethod]
        public void ShouldReturnValidSponsorworks()
        {
            // Arrange & Act
            var db = new Sponsorworks("Sponsorworks");
            
            // Assert
            Assert.IsNotNull(db);
            Assert.IsNotNull(db.Connection);
        }
    }
}