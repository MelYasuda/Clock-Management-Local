using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using ClockManagement.Models;
using Microsoft.AspNetCore.Mvc;

namespace ClockManagement.Controllers
{
    public class HomeController : Controller
    {
        //public IActionResult Index()
        //{
        //    return View();
        //}

        public IActionResult About()
        {
            ViewData["Message"] = "Your application description page.";

            return View();
        }

        public IActionResult Contact()
        {
            ViewData["Message"] = "Your contact page.";

            return View();
        }

        public IActionResult Error()
        {
            return View();
        }

        [HttpGet("/")]
        public ActionResult Index()
        {
            return View();
        }
    }
}
