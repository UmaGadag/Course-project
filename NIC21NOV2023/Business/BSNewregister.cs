using NIC21NOV2023.DataAccess;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace NIC21NOV2023.Business
{
    public class BSNewregister
    {
        public bool SaveNewUser(string Name, DateTime DOB, string Gender, string Email, string mobileNo, string address, int district, int taluk) // No Parameter  
        {

            bool str = DBNewregister.SaveNewUser(Name, DOB, Gender, Email, mobileNo, address,district,taluk);
            return str;
        }
        public static DataTable LoadDistrict()
        {
            DataTable dt = DBNewregister.district();
            return dt;
        }
        public static DataTable Loadtaluk(int dist)
        {
            DataTable dt = DBNewregister.taluk(dist);
            return dt;
        }
        public static DataTable LoadBeneficiaryDetail(string search) // No Parameter  
        {

            DataTable dt = DBNewregister.Beneficiarydetail(search);
            return dt;
        }
    }
}