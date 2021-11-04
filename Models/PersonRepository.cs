using Dapper;
using Microsoft.Data.SqlClient;

namespace WebApplication3.Models
{
    public interface IPersonRepository
    {
        public List<Person> GetPersons();
    }
    public class PersonRepository : IPersonRepository
    {
        private string conString;
        public PersonRepository(string cnStr)
        {
            conString = cnStr;
        }
        public List<Person> GetPersons()
        {
            using var connection = new SqlConnection(conString);
            return connection.Query<Person>("select * from Persons").ToList();
        }
    }
}
