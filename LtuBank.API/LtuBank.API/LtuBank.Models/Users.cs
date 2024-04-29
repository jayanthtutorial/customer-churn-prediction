using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LtuBank.Models
{
	public class Users
	{
		public int UserID { get; set; }
		public string Name { get; set; } = string.Empty;
		public string Email { get; set; } = string.Empty;
		public decimal Amount { get; set; } = 0.00M;
		public string ModifiedBy { get; set; } = string.Empty;
		public DateTime ModifiedOn { get; set; } = DateTime.Now;
		public bool IsDeleted { get; set; } = false;
	}

}
