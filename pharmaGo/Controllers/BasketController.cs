using System;
using Microsoft.AspNetCore.Mvc;

namespace pharmaGo.Controllers
{
	[Route("api/basket")]
    public class BasketController
    {
        public BasketController()
        {
			
        }

        [HttpGet]
		[Route("get")]
		public string Get(){
			return "AAA";
		}
    }
}
