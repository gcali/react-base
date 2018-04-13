using Microsoft.AspNetCore.Mvc;

namespace Burraco.Web.Controllers
{
    public class Home : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}