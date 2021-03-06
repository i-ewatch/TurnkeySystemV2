﻿using System.Collections.Generic;

namespace TurnkeySystemV2.Protocols.B0501
{
    public class B0501Protocol : B0501Data
    {
        public override void ReadData()
        {
            List<CancelAllowance> B0501 = new List<CancelAllowance>();
            var Value = SQLMethod.Count_B0501();
            if (Value != null)
            {
                Form1.B0501Num = Value.Count;
                foreach (var B0501Data in Value)
                {
                    CancelAllowance data = new CancelAllowance();
                    data.CancelAllowanceNumber = B0501Data.CancelAllowanceNumber.Trim();
                    data.AllowanceDate = B0501Data.AllowanceDate.Trim();
                    data.BuyerId = B0501Data.BuyerId.Trim();
                    data.SellerId = B0501Data.SellerId.Trim();
                    data.CancelDate = B0501Data.CancelDate.Trim();
                    data.CancelTime = B0501Data.CancelTime.Substring(0,2)+":"+ B0501Data.CancelTime.Substring(2, 2)+":00";
                    data.CancelReason = B0501Data.Cancelreason.Trim();
                    B0501.Add(data);
                }
                CancelAllowance = B0501;
                if (Value.Count > 0)
                {
                    XMLMethod.Save_B0501(CancelAllowance);
                }
            }
            else
            {
                Form1.B0501Num = 0;
            }
        }
    }
}
