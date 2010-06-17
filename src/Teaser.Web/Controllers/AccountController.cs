﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using Rpx4Mvc;
using System.Web.Script.Serialization;
using System.Configuration;

namespace Teaser.Web.Controllers
{
    [HandleError]
    public class AccountController : Controller
    {
        public ActionResult Login(string token)
        {

            ViewData["token"] = token;

            if (string.IsNullOrEmpty(token))
            {
                return View();
            }
            else
            {
                string rpxApiKey = ConfigurationSettings.AppSettings["RpxApiKey"];
                IRpxLogin rpxLogin = new RpxLogin(rpxApiKey);
                try
                {
                    RpxProfile profile = rpxLogin.GetProfile(token);

                    JavaScriptSerializer js = new JavaScriptSerializer();
                    ViewData["message"] = js.Serialize(profile);
                    FormsAuthentication.SetAuthCookie(profile.DisplayName, false);
                }
                catch (RpxException )
                {
                    return RedirectToAction("Login");
                    //ViewData["message"] = e.ToString();
                    //return View();
                }
                //return View();
                return RedirectToAction("Welcome", "Account");
            }
        }

        [Authorize]
        public ActionResult Logout()
        {
            FormsAuthentication.SignOut();
            return RedirectToAction("Welcome", "Account");
        }


        public ActionResult Welcome()
        {
            return View();
        }
    }
}
