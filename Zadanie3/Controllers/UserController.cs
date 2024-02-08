using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Zadanie3.Context;
using Zadanie3.Models;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace Zadanie3.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UserController : ControllerBase
    {
        private readonly DBContext _context;

        public UserController(DBContext context)
            => _context = context;
     
        // GET: api/<UserController>
        [HttpGet]
        public IEnumerable<UsersModel> Get()
        {
            return _context.Users.ToList();
        }

        // GET api/<UserController>/5
        [HttpGet("{id}")]
        public UsersModel? Get(int id)
        {
            return _context.Users.FirstOrDefault(d => d.Id == id);
        }

        // POST api/<UserController>
        [HttpPost]
        public void Post([FromBody] NewUserModel value)
        {
            _context.Users.Add(new UsersModel { Name = value.Name, Surname = value.Surname, FatherName = value.FatherName, Email = value.Email, Password = value.Password });
            _context.SaveChanges();
        }

        // PUT api/<UserController>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] NewUserModel recordModel)
        {
            var findUser = _context.Users.Find(id);

            findUser.Name = recordModel.Name;
            findUser.Surname = recordModel.Surname;
            findUser.FatherName = recordModel.FatherName;
            findUser.Email = recordModel.Email;
            findUser.Password = recordModel.Password;

            _context.SaveChanges();
        }

        // DELETE api/<UserController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
            var delUser = _context.Users.Find(id);
            _context.Users.Remove(delUser);
            _context.SaveChanges();
        }
    }
}
