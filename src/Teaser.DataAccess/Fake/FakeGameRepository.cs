﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Teaser.DataAccess.Interfaces;
using Teaser.Entities;

namespace Teaser.DataAccess.Fake
{
    public class FakeGameRepository : IGameRepository
    {
        IList<Game> list = new List<Game>();

        public FakeGameRepository( )
        {
            for (int i = 1; i <= 42; i++)
            {
                Game x = new Game();
                x.Id = i;
                list.Add(x);
            }
             
        }




        #region IRepository<Game> Members

        public List<Game> Get()
        {
            throw new NotImplementedException();
        }

        public Game Save(Game entity)
        {
            throw new NotImplementedException();
        }

        public bool Delete(Game entity)
        {
            throw new NotImplementedException();
        }

        #endregion
    }
}
