using LtuBank.DataAccess.Contract;
using LtuBank.Models;
using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;

namespace LtuBank.DataAccess
{
	public class UsersRepository : IUsersRepository
	{
		private IConfiguration configuration;
		private string LtuBank_ConnectionString;

		public UsersRepository(IConfiguration configuration)
		{
			this.configuration = configuration;
			this.LtuBank_ConnectionString = configuration["ConnectionStrings:LtuBank_ConnectionString"].ToString();
		}

		public List<Users> GetUsersList()
		{
			List<Users> result = new List<Users>();
			DataSet ds = SqlHelper.ExecuteDataset(LtuBank_ConnectionString, "[dbo].[ListUsers]");
			result = DataTableHelper.ConvertDataTable<Users>(ds.Tables[0]);
			return result;
		}


		public PostResult AddUser(Users model)
		{
			PostResult result = new PostResult();

			DataSet ds = SqlHelper.ExecuteDataset(LtuBank_ConnectionString, "[dbo].[CreateUser]"
				, model.Name, model.Email, model.Amount, model.ModifiedBy
				);

			if (ds.Tables.Count > 0)
			{
				if (ds.Tables[0].Rows.Count > 0)
				{
					result = DataTableHelper.ConvertDataTable<PostResult>(ds.Tables[0]).FirstOrDefault();
				}
			}

			return result;
		}

		public PostResult UpdateUser(Users model)
		{
			PostResult result = new PostResult();

			DataSet ds = SqlHelper.ExecuteDataset(LtuBank_ConnectionString, "[dbo].[UpdateUser]"

				//,Id, ModifiedBy, ModifiedOn ?? DateTime.UtcNow
				);

			if (ds.Tables.Count > 0)
			{
				if (ds.Tables[0].Rows.Count > 0)
				{
					result = DataTableHelper.ConvertDataTable<PostResult>(ds.Tables[0]).FirstOrDefault();
				}
			}
			return result;
		}

		public PostResult DeleteUser(int Id, string ModifiedBy, DateTime? ModifiedOn)
		{
			PostResult result = new PostResult();

			DataSet ds = SqlHelper.ExecuteDataset(LtuBank_ConnectionString, "[dbo].[SoftDeleteUser]",
				Id, ModifiedBy, ModifiedOn ?? DateTime.UtcNow);

			if (ds.Tables.Count > 0)
			{
				if (ds.Tables[0].Rows.Count > 0)
				{
					result = DataTableHelper.ConvertDataTable<PostResult>(ds.Tables[0]).FirstOrDefault();
				}
			}

			return result;
		}



		public PostResult TransferMoney(int SenderUserID, int ReceiverUserID, decimal Amount)
		{
			PostResult result = new PostResult();

			DataSet ds = SqlHelper.ExecuteDataset(LtuBank_ConnectionString, "[dbo].[TransferMoney]"
				, SenderUserID, ReceiverUserID, Amount
				);

			if (ds.Tables.Count > 0)
			{
				if (ds.Tables[0].Rows.Count > 0)
				{
					result = DataTableHelper.ConvertDataTable<PostResult>(ds.Tables[0]).FirstOrDefault();
				}
			}
			return result;
		}

		public List<TransactionLog> Get_ListTransactionLogs()
		{
			List<TransactionLog> result = new List<TransactionLog>();
			DataSet ds = SqlHelper.ExecuteDataset(LtuBank_ConnectionString, "ListTransactionLogs");
			result = DataTableHelper.ConvertDataTable<TransactionLog>(ds.Tables[0]);
			return result;
		}

        public List<TransferMoney> Get_TransferMoneyList()
        {
            List<TransferMoney> result = new List<TransferMoney>();
            DataSet ds = SqlHelper.ExecuteDataset(LtuBank_ConnectionString, "ListTransferMoney");
            result = DataTableHelper.ConvertDataTable<TransferMoney>(ds.Tables[0]);
            return result;
        }
        

    }
}
