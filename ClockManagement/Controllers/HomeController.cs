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

        [HttpPost("/login")]
        public ActionResult LogIn(string userName, string password)
        {
            bool result = Employee.Login(userName, password);
            string resultString = "";
            if (result == true)
            {
                Employee.login = true;
                resultString = "Welcome to ClockManagement "+userName+".";
            }
            else
            {
                Employee.login = false;
                resultString = "ID/Password combination doesn't match with our database.";
            }
            return View("Index",resultString);
        }

        [HttpPost("/logout")]
        public ActionResult LogOut()
        {
            Employee.login = false;
            var resultString = "Successfuly logged out.";
            return RedirectToAction("Index", resultString);
        }

        [HttpGet("/signup")]
        public ActionResult Signup()
        {
            Dictionary<string, object> model = new Dictionary<string, object>();
            List<Department> allDepartments = Department.GetAll();
            List<Employee> allEmployees = Employee.GetAll();
            model.Add("allDepartments", allDepartments);
            model.Add("allEmployees", allEmployees);
            return View("Index", model);
        }

        [HttpPost("/signup")]
        public ActionResult SignUp(int departmentId, string employeeName, string employeeUserName, string employeeUserPassword)
        {
            Employee newEmployee = new Employee(employeeName, employeeUserName, employeeUserPassword);
            newEmployee.Save();
            Department foundDepartment = Department.Find(departmentId);
            newEmployee.AddDepartment(foundDepartment);

            return RedirectToAction("Index");
        }

    }
}
