using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Data.SqlClient;

namespace flashCards
{
    public class Study1
    {
        private string m_UserName;
        private string m_FlascardName;
        private string m_Category;
        private string m_Subject;
        private double m_percentageCompleted;
        private double m_PercentageCorrect;
        private int m_Rating;
        private string m_StudyDate;

        public string UserName { get => m_UserName; set => m_UserName = value; }
        public string FlascardName { get => m_FlascardName; set => m_FlascardName = value; }
        public string Category { get => m_Category; set => m_Category = value; }
        public string Subject { get => m_Subject; set => m_Subject = value; }
        public double PercentageCompleted { get => m_percentageCompleted; set => m_percentageCompleted = value; }
        public double PercentageCorrect { get => m_PercentageCorrect; set => m_PercentageCorrect = value; }
        public int Rating { get => m_Rating; set => m_Rating = value; }
        public string StudyDate { get => m_StudyDate; set => m_StudyDate = value; }



       
        public int studyRecord()
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
                cmd.CommandText = "[USP_Study1_Insert]";

                cmd.Parameters.AddWithValue("@UserName", UserName);
                cmd.Parameters.AddWithValue("@FlashCardName", FlascardName);
                cmd.Parameters.AddWithValue("@Category", Category);
                cmd.Parameters.AddWithValue("@Subjec", Subject);
                cmd.Parameters.AddWithValue("@PercentageCompleted", PercentageCompleted);
                cmd.Parameters.AddWithValue("@PercentageCorrect", PercentageCorrect);
                cmd.Parameters.AddWithValue("@Rating", Rating);
                cmd.Parameters.AddWithValue("@StudyDate", StudyDate);
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
