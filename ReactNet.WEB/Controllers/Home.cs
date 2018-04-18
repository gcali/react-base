using Microsoft.AspNetCore.Mvc;

namespace ReactNet.WEB.Controllers
{
    public class Home : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}