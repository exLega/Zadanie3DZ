using Microsoft.AspNetCore.Mvc;
using Zadanie3.Context;
using Zadanie3.Models;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace Zadanie3.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ProductController : ControllerBase
    {
        private readonly DBContext _context;

        public ProductController(DBContext context) 
           => _context = context;


        // GET: api/<ProductController>
        [HttpGet]
        public IEnumerable<ProductModel> Get()
        {
            return _context.Products.ToList();
        }

        // GET api/<ProductController>/5
        [HttpGet("{id}")]
        public ProductModel? Get(int id)
        {
            return _context.Products.FirstOrDefault(p => p.Id == id);
        }

        // POST api/<ProductController>
        [HttpPost]
        public void Post([FromBody] NewProductModel value)
        {
            _context.Products.Add(new ProductModel { Name = value.Name, Description = value.Description, Manufacturer = value.Manufacturer });
            _context.SaveChanges();
        }

        // PUT api/<ProductController>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] NewProductModel recordProduct)
        {
            var findProduct = _context.Products.Find(id);

            findProduct.Name = recordProduct.Name;
            findProduct.Description = recordProduct.Description;
            findProduct.Manufacturer = recordProduct.Manufacturer;

            _context.SaveChanges();
        }

        // DELETE api/<ProductController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
            var delProduct = _context.Products.Find(id);
            _context.Products.Remove(delProduct);
            _context.SaveChanges();
        }
    }
}
