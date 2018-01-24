using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Resource_Management.DAL
{
    public class DLL
    {
        SqlConnection con = new SqlConnection();

        public string connection()
        {
            return ConfigurationManager.ConnectionStrings["HRManag"].ToString();
        }

        public DLL()
        {
            con.ConnectionString = connection();
            con.Open();
        }

        #region SQL-Aggregate Function
        public int Aggregate(string SqlQuery)
        {
            SqlCommand cmd = new SqlCommand(SqlQuery, con);
            return int.Parse(cmd.ExecuteScalar().ToString());
        }
        #endregion


        #region SQL-DML Operations#insert,Delete,Update
        public int DoTransaction(string SqlQuery)
        {
            SqlCommand cmd = new SqlCommand(SqlQuery, con);
            return int.Parse(cmd.ExecuteNonQuery().ToString());

        }
        #endregion

        #region SQL-DQL Operation#select
        public DataTable DoNonTransaction(string SqlQuery)
        {
            SqlDataAdapter Adop = new SqlDataAdapter(SqlQuery, con);
            DataTable dt = new DataTable();
            Adop.Fill(dt);
            return dt;
        }
        #endregion


       

    }
}