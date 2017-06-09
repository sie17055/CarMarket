using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CarMarket
{
    public class LoginDaten
    {
        private string user;
        private string pwd;

        public string User
        {
            get
            {
                return user;
            }

            set
            {
                user = value;
            }
        }

        public string Pwd
        {
            get
            {
                return pwd;
            }

            set
            {
                pwd = value;
            }
        }

        public LoginDaten(string u, string p)
        {
            User = u;
            Pwd = p;
            //
            // TODO: Add constructor logic here
            //
        }
    }
}