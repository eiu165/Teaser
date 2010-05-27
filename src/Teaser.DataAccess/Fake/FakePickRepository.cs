﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Teaser.Entities;
using Teaser.DataAccess.Interfaces;

namespace Teaser.DataAccess.Fake
{
    public class FakePickRepository : IPickRepository
    {
        IList<Pick> list = new List<Pick>();

        public FakePickRepository()
        {
            for (int i = 1; i <= 3; i++)
            {
                Pick x = new Pick();
                x.Id = i;
                list.Add(x);
            }
        }

        #region IRepository<Pick> Members

        public IQueryable<Pick> Get()
        {
            throw new NotImplementedException();
        }

        public Pick Save(Pick entity)
        {
            throw new NotImplementedException();
        }

        public bool Delete(Pick entity)
        {
            throw new NotImplementedException();
        }

        #endregion
    }
}
