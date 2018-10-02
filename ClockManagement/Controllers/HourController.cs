using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using ClockManagement.Models;


namespace ClockManagement.Controllers
{
    public class HourController : Controller
    {
        [HttpGet("/hours")]
        public ActionResult Index()
        {
            List<Hour> allHours = Hour.GetAll();
            return View(allHours);
        }

        [HttpPost("/employees/{id}/clockIn")]
        public ActionResult clockIn(int id)
        {
            Dictionary<string, object> model = new Dictionary<string, object>();
            Employee foundEmployee = Employee.Find(id);
            Hour clockInHour = new Hour(foundEmployee.id);
            clockInHour.Save(foundEmployee.id);
            clockInHour.ClockIn(foundEmployee.id);
            model.Add("foundEmployee", foundEmployee);
            model.Add("clockInHour", clockInHour);
            return RedirectToAction("Details", "Employee", new { employeeId = foundEmployee.id });
        }

        [HttpPost("/employees/{id}/clockOut")]
        public ActionResult clockOut(int id)
        {
            Dictionary<string, object> model = new Dictionary<string, object>();
            Employee selectedEmployee = Employee.Find(id);
            Hour clockOutHour = Hour.Find(selectedEmployee.id);
            clockOutHour.ClockOut(selectedEmployee.id);
            clockOutHour.Hours(selectedEmployee.id);
            model.Add("selectedEmployee", selectedEmployee);
            // model.Add("clockOutHour", clockOutHour);
            return RedirectToAction("Details", "Employee", new { employeeId = selectedEmployee.id });
        }

    }
}

