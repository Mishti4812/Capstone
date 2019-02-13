using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace flashCards
{
    public class Questions
    {
        private string m_name;
        private string m_catagory;
        private string m_section;
        private string m_question;
        private string m_answer;
        private string m_createdBy;
        private bool m_private;

        public string Name { get => m_name; set => m_name = value; }
        public string Catagory { get => m_catagory; set => m_catagory = value; }
        public string Section { get => m_section; set => m_section = value; }
        public string Question { get => m_question; set => m_question = value; }
        public string Answer { get => m_answer; set => m_answer = value; }
        public string CreatedBy { get => m_createdBy; set => m_createdBy = value; }
        public bool Private { get => m_private; set => m_private = value; }

        public int CreateFlashcard()
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
                cmd.CommandText = "[USP_Questions_Insert]";

                cmd.Parameters.AddWithValue("@name", Name);
                cmd.Parameters.AddWithValue("@catagory", Catagory);
                cmd.Parameters.AddWithValue("@section", Section);
                cmd.Parameters.AddWithValue("@question", Question);
                cmd.Parameters.AddWithValue("@answer", Answer);
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
    }
}
