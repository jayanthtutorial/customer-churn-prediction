using LtuBank.Business.Contract;
using LtuBank.Models;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace LtuBank.API.Controllers
{
	[Route("api/[controller]")]
	[ApiController]
	[EnableCors("AllowOrigin")]
	public class UsersController : ControllerBase
	{
		private readonly IConfiguration _iconfiguration;
		private readonly IUsersBusiness IResultData;

		public UsersController(IConfiguration iconfiguration, IUsersBusiness iResultData)
		{
			this.IResultData = iResultData;
			_iconfiguration = iconfiguration;
		}

		[HttpGet("GetUsersList")]
		public IActionResult GetUsersList()
		{
			var result = this.IResultData.GetUsersList();
			return this.Ok(result);
		}

		[HttpPost("AddUser")]
		public IActionResult AddUser([FromBody] Users model)
		{
			var result = this.IResultData.AddUser(model);
			return this.Ok(result);
		}

		[HttpPost("UpdateUser")]
		public IActionResult UpdateUser([FromBody] Users model)
		{
			var result = this.IResultData.UpdateUser(model);
			return this.Ok(result);
		}

		[HttpPost("DeleteUser")]
		public IActionResult DeleteUser(int Id, string ModifiedBy, DateTime? ModifiedOn)
		{
			var result = this.IResultData.DeleteUser(Id, ModifiedBy, ModifiedOn);
			return this.Ok(result);
		}

		[HttpGet("Get_ListTransactionLogs")]
		public IActionResult Get_ListTransactionLogs()
		{
			var result = this.IResultData.Get_ListTransactionLogs();
			return this.Ok(result);
		}

        [HttpGet("Get_TransferMoneyList")]
        public IActionResult Get_TransferMoneyList()
        {
            var result = this.IResultData.Get_TransferMoneyList();
            return this.Ok(result);
        }

        [HttpPost("TransferMoney")]
		public IActionResult TransferMoney(int SenderUserID, int ReceiverUserID, decimal Amount)
		{
			var result = this.IResultData.TransferMoney(SenderUserID, ReceiverUserID, Amount);
			return this.Ok(result);
		}
		

	}
}
