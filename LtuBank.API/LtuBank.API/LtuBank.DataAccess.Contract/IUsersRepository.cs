using LtuBank.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LtuBank.DataAccess.Contract
{
	public interface IUsersRepository
	{
		List<Users> GetUsersList();
		PostResult AddUser(Users model);
		PostResult UpdateUser(Users model);
		PostResult DeleteUser(int Id, string ModifiedBy, DateTime? ModifiedOn);
		PostResult TransferMoney(int SenderUserID, int ReceiverUserID, decimal Amount);
		List<TransactionLog> Get_ListTransactionLogs();
		List<TransferMoney> Get_TransferMoneyList();

    }
}
