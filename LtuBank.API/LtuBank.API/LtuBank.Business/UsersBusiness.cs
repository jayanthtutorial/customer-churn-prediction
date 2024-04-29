using LtuBank.Business.Contract;
using LtuBank.DataAccess.Contract;
using LtuBank.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LtuBank.Business
{
	public class UsersBusiness : IUsersBusiness
	{
		
		private IUsersRepository _repository;

		public UsersBusiness(IUsersRepository repository)
		{
			_repository = repository;
		}

		public List<Users> GetUsersList()
		{
			return this._repository.GetUsersList();
		}

		public PostResult AddUser(Users model)
		{
			return this._repository.AddUser(model);
		}

		public PostResult UpdateUser(Users model)
		{
			return this._repository.UpdateUser(model);
		}

		public PostResult DeleteUser(int Id, string ModifiedBy, DateTime? ModifiedOn)
		{
			return this._repository.DeleteUser(Id, ModifiedBy, ModifiedOn);
		}

		public PostResult TransferMoney(int SenderUserID, int ReceiverUserID, decimal Amount)
		{
			return this._repository.TransferMoney(SenderUserID, ReceiverUserID, Amount);
		}
		public List<TransactionLog> Get_ListTransactionLogs()
		{
			return this._repository.Get_ListTransactionLogs();
		}

        public List<TransferMoney> Get_TransferMoneyList()
        {
            return this._repository.Get_TransferMoneyList();
        }

        
    }
}
