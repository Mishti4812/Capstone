using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Data.SqlClient;

namespace flashCards
{
    public class FlashcardCreate
    {
        private string m_name;
        private string m_category;
        private string m_subject;
        private string m_createdBy;
        private bool m_private;

        public string Name { get => m_name; set => m_name = value; }
        public string Category { get => m_category; set => m_category = value; }
        public string Subject { get => m_subject; set => m_subject = value; }
        public string CreatedBy { get => m_createdBy; set => m_createdBy = value; }
        public bool Private { get => m_private; set => m_private = value; }

    public DataSet GetListOfCategories()
        {
            SqlConnection cn = null;
            SqlCommand cmd = null;
            SqlDataAdapter sda = null;
            DataSet dSet = null;

            try
            {
                cn = new SqlConnection();

                // cn.ConnectionString = GetConnectionString();
               cn.ConnectionString = "data source =.; initial catalog = flaschcard; integrated security = true; ";

                cmd = new SqlCommand();
                cmd.Connection = cn;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "USP_GetListOfCategories";

                sda = new SqlDataAdapter(cmd);
                dSet = new DataSet("categories");
                sda.Fill(dSet, "category");
            }
            catch(Exception ex)
            {
                throw new Exception(ex.Message);
            }
            return (dSet);
        }
       /* public DataSet GetListOfSubjectsCategories()
        {
            SqlConnection cn = null;
            SqlCommand cmd = null;
            SqlDataAdapter sda = null;
            DataSet dSet = null;
            

            try
            {
                cn = new SqlConnection();

                // cn.ConnectionString = GetConnectionString();
                cn.ConnectionString = "data source =.; initial catalog = flaschcard; integrated security = true; ";

                cmd = new SqlCommand();
                cmd.Connection = cn;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "USP_GetListOfSubjectsCatagory";

                // Category = "physics";
                if (Category == null)
                {
                    string cat = "chemistry";
                    cmd.Parameters.AddWithValue("@category", cat);
                }

                else
                {


                    cmd.Parameters.AddWithValue("@category", Category);
                }

                sda = new SqlDataAdapter(cmd);
                dSet = new DataSet("categories");
                sda.Fill(dSet, "category");
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            return (dSet);
        }
        */


        public int create_Flashcard()
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
            cmd.CommandText = "[USP_CreateFlashcard_Insert]";

            cmd.Parameters.AddWithValue("@name", Name);
            cmd.Parameters.AddWithValue("@category", Category);
            cmd.Parameters.AddWithValue("@subject", Subject);
            cmd.Parameters.AddWithValue("@private", Private);
            cmd.Parameters.AddWithValue("@createdBy", CreatedBy);

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
        private string GetConnectionString()
        {
            string str = "data source =.; initial catalog = flaschcard; integrated security = true; ";
            return (str);
        }
}
}