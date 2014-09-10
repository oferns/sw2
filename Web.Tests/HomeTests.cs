// --------------------------------------------------------------------------------------------------------------------
// <copyright file="HomeTests.cs" company="Sponsorworks">
//   Copyright
// </copyright>
// <summary>
//   Summary description for HomeTests
// </summary>
// --------------------------------------------------------------------------------------------------------------------

namespace Web.Tests
{
    using Microsoft.VisualStudio.TestTools.UITesting;
    using Microsoft.VisualStudio.TestTools.UnitTesting;

    /// <summary>
    /// Summary description for CodedUITest1
    /// </summary>
    [CodedUITest]
    public class HomeTests
    {
        private TestContext testContextInstance;

        private UIMap map;

        public HomeTests()
        {
        }

        /// <summary>
        ///Gets or sets the test context which provides
        ///information about and functionality for the current test run.
        ///</summary>
        public TestContext TestContext
        {
            get
            {
                return this.testContextInstance;
            }

            set
            {
                this.testContextInstance = value;
            }
        }

        public UIMap UIMap
        {
            get
            {
                if (this.map == null)
                {
                    this.map = new UIMap();
                }

                return this.map;
            }
        }

        [TestMethod]
        public void CodedUITestMethod1()
        {
            // To generate code for this test, select "Generate Code for Coded UI Test" from the shortcut menu and select one of the menu items.
            this.UIMap.Home_Page_Loads();
        }

        #region Additional test attributes

        // You can use the following additional attributes as you write your tests:

        ////Use TestInitialize to run code before running each test 
        // [TestInitialize()]
        // public void MyTestInitialize()
        // {        
        // // To generate code for this test, select "Generate Code for Coded UI Test" from the shortcut menu and select one of the menu items.
        // }

        ////Use TestCleanup to run code after each test has run
        // [TestCleanup()]
        // public void MyTestCleanup()
        // {        
        // // To generate code for this test, select "Generate Code for Coded UI Test" from the shortcut menu and select one of the menu items.
        // }
        #endregion
    }
}