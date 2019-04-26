using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace flashCards
{
    public class UserDetails
    {
        private string m_UserName;
        private string m_Password;
        private string m_email;

        public string UserName { get => m_UserName; set => m_UserName = value; }
        public string Password { get => m_Password; set => m_Password = value; }
        public string Email { get => m_email; set => m_email = value; }

        public int CreateUser()
        {
            SqlConnection cn = null;
            SqlCommand cmd = null;
            int counter = 0;
            try
            {
                cn = new SqlConnection();
                cn.ConnectionString = "data source=.;initial catalog=flaschcard;integrated security=true;";

                cmd = new SqlCommand();
                cmd.Connection = cn;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "[USP_UserDetails_Insert]";

                cmd.Parameters.AddWithValue("@UserName", UserName);
                cmd.Parameters.AddWithValue("@Password", Password);
                cmd.Parameters.AddWithValue("@email", Email);

                cn.Open();
                counter = cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);

            }
            finally
            {
                if (cn != null)
                {
                    cn.Close();
                    cn.Dispose();
                    cn = null;
                }

            }
            return (counter);
        }
        public int CheckCredentials ()
        {
            SqlConnection cn = null;
            SqlCommand cmd = null;
            int counter = 0;
            try
            {
                cn = new SqlConnection();
                cn.ConnectionString = "data source=.;initial catalog=flaschcard;integrated security=true;";

                cmd = new SqlCommand();
                cmd.Connection = cn;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "[USP_CheckCredentials]";

                cmd.Parameters.AddWithValue("@UserName", UserName);
                cmd.Parameters.AddWithValue("@Password", Password);
                

                cn.Open();
                counter = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);

            }
            finally
            {
                if (cn != null)
                {
                    cn.Close();
                    cn.Dispose();
                    cn = null;
                }

            }
            return (counter);

        }
        

            public int changePassword()
            {
                SqlConnection cn = null;
                SqlCommand cmd = null;
                int counter = 0;
                try
                {
                    cn = new SqlConnection();
                    cn.ConnectionString = "data source=.;initial catalog=flaschcard;integrated security=true;";

                    cmd = new SqlCommand();
                    cmd.Connection = cn;
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "[USP_ChangePassword]";

                    cmd.Parameters.AddWithValue("@UserName", UserName);
                    cmd.Parameters.AddWithValue("@Password", Password);
                    

                    cn.Open();
                    counter = cmd.ExecuteNonQuery();
                }
                catch (Exception ex)
                {
                    throw new Exception(ex.Message);

                }
                finally
                {
                    if (cn != null)
                    {
                        cn.Close();
                        cn.Dispose();
                        cn = null;
                    }

                }
                return (counter);
            }
        public int Unsubscribe()
        {
            SqlConnection cn = null;
            SqlCommand cmd = null;
            int counter = 0;
            try
            {
                cn = new SqlConnection();
                cn.ConnectionString = "data source=.;initial catalog=flaschcard;integrated security=true;";

                cmd = new SqlCommand();
                cmd.Connection = cn;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "[USP_Unsubscribe]";

                cmd.Parameters.AddWithValue("@UserName", UserName);
                


                cn.Open();
                counter = cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);

            }
            finally
            {
                if (cn != null)
                {
                    cn.Close();
                    cn.Dispose();
                    cn = null;
                }

            }
            return (counter);
        }
        public int inactive()
        {
            SqlConnection cn = null;
            SqlCommand cmd = null;
            int counter = 0;
            try
            {
                cn = new SqlConnection();
                cn.ConnectionString = "data source=.;initial catalog=flaschcard;integrated security=true;";

                cmd = new SqlCommand();
                cmd.Connection = cn;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "[USP_inactive]";

                cmd.Parameters.AddWithValue("@UserName", UserName);



                cn.Open();
                counter = cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);

            }
            finally
            {
                if (cn != null)
                {
                    cn.Close();
                    cn.Dispose();
                    cn = null;
                }

            }
            return (counter);
        }

    }
}