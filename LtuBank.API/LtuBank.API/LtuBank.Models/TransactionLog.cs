using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LtuBank.Models
{
    // TransactionLog model
    public class TransactionLog
    {
        public int LogID { get; set; }
        public string TransactionType { get; set; } = string.Empty;
        public string Sender { get; set; } = string.Empty;
        public string Receiver { get; set; } = string.Empty;
        public decimal Amount { get; set; } = 0.00M;
        public DateTime? TransactionDate { get; set; } = DateTime.Now;
    }

    // TransferMoney model
    public class TransferMoney
    {
        public int ID { get; set; }
        public string Name { get; set; } = string.Empty;
        public string Email { get; set; } = string.Empty;
        public decimal Balance { get; set; } =0.00M;
        public string Operation { get; set; } = string.Empty;
    }


}
