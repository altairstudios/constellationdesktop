using System;
using System.Collections.Generic;
using System.Web;
using System.Web.Mvc;
using System.Web.Mvc.Ajax;
using ConstellationDesktop.Web.Models;


namespace ConstellationDesktop.Web.Controllers {
	[HandleError]
	public class AccountController : Controller {

		
		public ActionResult Login(User user) {
			Session.Add("user", user);
			
			return Json(user);
		}
	}
}