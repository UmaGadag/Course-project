using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Xml.Linq;

namespace NIC21NOV2023.DataAccess
{
    public class DBNewregister
    {
        public static bool SaveNewUser( string Name, DateTime DOB, string Gender ,string Email,string mobileNo,string address, int district, int taluk)
        {
            string strcon = ConfigurationManager.ConnectionStrings["COURSE_MANAGER"].ConnectionString;
            using (SqlConnection con = new SqlConnection(strcon))
            {
                SqlCommand cmd = new SqlCommand("sp_InsertUpdateNewUser", con);
                con.Open();
                cmd.Parameters.AddWithValue("@Name", Name);
                cmd.Parameters.AddWithValue("@DOB",DOB);
                cmd.Parameters.AddWithValue("@Gender",Gender);
                cmd.Parameters.AddWithValue("@Email",Email);
                cmd.Parameters.AddWithValue("@Mobileno",mobileNo);
                cmd.Parameters.AddWithValue("@Address",address);
                cmd.Parameters.AddWithValue("@District_cd",district);
                cmd.Parameters.AddWithValue("@Taluk_cd",taluk);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                int i = cmd.ExecuteNonQuery();
                
                return true;
               

            }
            return false;
        }

        public static DataTable district()
        {
            string strcon = ConfigurationManager.ConnectionStrings["COURSE_MANAGER"].ConnectionString;
            using (SqlConnection con = new SqlConnection(strcon))
            {
                SqlCommand cmd = new SqlCommand("Select 0 [District_Cd],'--Select District--'[District_NAme] UNION Select * from [dbo].[Mstdistrict]", con);
                con.Open();
                cmd.CommandType = System.Data.CommandType.Text;
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                adapter.Fill(dt);
                return dt;
            }
        }

        public static DataTable Beneficiarydetail(String search)
        {
            string strcon = ConfigurationManager.ConnectionStrings["COURSE_MANAGER"].ConnectionString;
            using (SqlConnection con = new SqlConnection(strcon))
            {
                SqlCommand cmd = new SqlCommand("sp_BENEFICIARY_DETAILS_BNA", con);
                con.Open();
                cmd.Parameters.AddWithValue("@search", search);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.ExecuteNonQuery();
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                adapter.Fill(dt);
                return dt;
            }
        }
        public static DataTable taluk(int dist)
        {
            string strcon = ConfigurationManager.ConnectionStrings["COURSE_MANAGER"].ConnectionString;
            using (SqlConnection con = new SqlConnection(strcon))
            {
                SqlCommand cmd = new SqlCommand("Select 0 [Taluk_Cd],'--Select Taluk--'[taluk] UNION Select Taluk_Cd,Taluk_Name from [dbo].[Msttaluk] WHERE District_CD=@District_CD", con);
                cmd.Parameters.AddWithValue("@District_CD", dist);
                con.Open();
                cmd.CommandType = System.Data.CommandType.Text;
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                adapter.Fill(dt);
                return dt;
            }
        }
    }
}