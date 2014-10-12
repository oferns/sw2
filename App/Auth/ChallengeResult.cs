﻿// --------------------------------------------------------------------------------------------------------------------
// <copyright file="ChallengeResult.cs" company="Sponsorworks">
//   Copyright
// </copyright>
// <summary>
//   Defines the ChallengeResult type.
// </summary>
// --------------------------------------------------------------------------------------------------------------------
namespace App.Auth
{
    using System.Diagnostics.Contracts;
    using System.Web;
    using System.Web.Mvc;

    using Microsoft.Owin.Security;

    /// <summary>
    /// The challenge result.
    /// </summary>
    internal class ChallengeResult : HttpUnauthorizedResult
    {
        /// <summary>
        /// The cross scripting protection key.
        /// </summary>
        private const string XsrfKey = "XsrfId";

        /// <summary>
        /// Initialises a new instance of the <see cref="ChallengeResult"/> class.
        /// </summary>
        /// <param name="provider">
        /// The provider.
        /// </param>
        /// <param name="redirectUri">
        /// The redirect uri.
        /// </param>
        public ChallengeResult(string provider, string redirectUri)
            : this(provider, redirectUri, null)
        {
        }

        /// <summary>
        /// Initialises a new instance of the <see cref="ChallengeResult"/> class.
        /// </summary>
        /// <param name="provider">
        /// The provider.
        /// </param>
        /// <param name="redirectUri">
        /// The redirect uri.
        /// </param>
        /// <param name="userId">
        /// The user id.
        /// </param>
        public ChallengeResult(string provider, string redirectUri, string userId)
        {
            this.LoginProvider = provider;
            this.RedirectUri = redirectUri;
            this.UserId = userId;
        }

        /// <summary>
        /// Gets or sets the login provider.
        /// </summary>
        public string LoginProvider { get; set; }

        /// <summary>
        /// Gets or sets the redirect uri.
        /// </summary>
        public string RedirectUri { get; set; }

        /// <summary>
        /// Gets or sets the user id.
        /// </summary>
        public string UserId { get; set; }

        /// <summary>
        /// The execute result.
        /// </summary>
        /// <param name="context">
        /// The context.
        /// </param>
        public override void ExecuteResult(ControllerContext context)
        {
            Contract.Assume(context != null);
            var properties = new AuthenticationProperties { RedirectUri = this.RedirectUri };
            if (this.UserId != null)
            {
                properties.Dictionary[XsrfKey] = this.UserId;
            }

            context.HttpContext.GetOwinContext().Authentication.Challenge(properties, this.LoginProvider);
        }
    }
}