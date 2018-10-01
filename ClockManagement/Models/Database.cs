using System;
using MySql.Data.MySqlClient;

namespace ClockManagement.Models
{
    public class DB
    {
        public static MySqlConnection Connection()
        {
            MySqlConnection conn = new MySqlConnection("Database=clock_management; Data Source=testdeployserver.mysql.database.azure.com; User Id=goenchan@testdeployserver; Password=epicodus123!;");
            return conn;
        }
    }
}
