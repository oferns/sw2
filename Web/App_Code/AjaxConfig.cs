// --------------------------------------------------------------------------------------------------------------------
// <copyright file="AjaxConfig.cs" company="Sponsorworks">
//   Copyright
// </copyright>
// <summary>
//   Defines the AjaxConfig type.
// </summary>
// --------------------------------------------------------------------------------------------------------------------

namespace Web
{
    using System.Web.Mvc.Ajax;

    /// <summary>
    /// The ajax config.
    /// </summary>
    public static class AjaxConfig
    {
        /// <summary>
        /// The form options.
        /// </summary>
        /// <param name="elementId">
        /// The element id.
        /// </param>
        /// <returns>
        /// The <see cref="AjaxOptions"/>.
        /// </returns>
        public static AjaxOptions FormOptions(string elementId)
        {
            return new AjaxOptions
                    {
                        HttpMethod = "POST",
                        InsertionMode = InsertionMode.ReplaceWith,
                        UpdateTargetId = elementId,
                        OnBegin = "$.ajaxBegin",
                        OnComplete = "$.ajaxComplete",
                        OnSuccess = "$.ajaxSuccess",
                        OnFailure = "$.ajaxFailure"
                    };
        }

        /// <summary>
        /// The link options.
        /// </summary>
        /// <param name="elementId">
        /// The element id.
        /// </param>
        /// <returns>
        /// The <see cref="AjaxOptions"/>.
        /// </returns>
        public static AjaxOptions LinkOptions(string elementId)
        {
            return new AjaxOptions
            {
                HttpMethod = "GET",
                InsertionMode = InsertionMode.ReplaceWith,
                UpdateTargetId = elementId,
                OnBegin = "$.ajaxBegin",
                OnComplete = "$.ajaxComplete",
                OnSuccess = "$.ajaxSuccess",
                OnFailure = "$.ajaxFailure"
            };
        }

        /// <summary>
        /// The navigation options.
        /// </summary>
        /// <returns>
        /// The <see cref="AjaxOptions"/>.
        /// </returns>
        public static AjaxOptions NavOptions()
        {
            return new AjaxOptions
            {
                HttpMethod = "GET",
                InsertionMode = InsertionMode.Replace,
                UpdateTargetId = "pageContainer",
                OnBegin = "$.ajaxBegin",
                OnComplete = "$.ajaxComplete",
                OnSuccess = "$.ajaxSuccess",
                OnFailure = "$.ajaxFailure"
            };
        }
    }
}