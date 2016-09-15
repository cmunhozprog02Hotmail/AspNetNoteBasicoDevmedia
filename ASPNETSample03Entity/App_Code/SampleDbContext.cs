using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ASPNETSample03Entity.App_Code
{
    public class SampleDbContext
    {
        static Sample001Entities db;

        public static Sample001Entities Current
        {
            get
            {
                if (System.Web.HttpContext.Current.Session["SampleDbContext"] == null)
                {
                    db = new Sample001Entities();
                }
                return db;
            }
        }
    }
}