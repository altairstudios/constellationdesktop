using System;
using System.Collections.Generic;
using System.Web;
using System.Web.Mvc;
using System.Web.Mvc.Ajax;


namespace ConstellationDesktop.Web.Controllers {
	[HandleError]
	public class DesktopController : Controller {
		public ActionResult Index() {
			ViewData ["Message"] = "Welcome to ASP.NET MVC on Mono!";
			return View();
		}
	}
}