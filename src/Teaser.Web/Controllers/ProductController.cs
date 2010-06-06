﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Teaser.Entities;
using Teaser.Web.Models;
using Teaser.Web.Controllers;
using Teaser.DataAccess.Interfaces;
using AutoMapper;


namespace Teaser.Web.Controllers
{

    public class ProductController : Controller
    {
        private readonly IProductRepository _productRepository;

        public ProductController(IProductRepository productRepository)
        {
            _productRepository = productRepository;
        }

        [AutoMapModel(typeof(IEnumerable<Product>), typeof(ProductListModel[]))]
        public ViewResult Index()
        {
            var products = _productRepository.FindAll();

            return View(products);
        }

        public ViewResult New()
        {
            return View("Edit");
        }

        [AutoMapModel(typeof(Product), typeof(ProductForm))]
        public ViewResult Edit(int id)
        {
            var product = _productRepository.GetById(id);

            return View(product);
        }

        public RedirectToRouteResult Save(ProductForm form)
        {
            var product = _productRepository.GetById(form.Id);

            product.Name = form.Name;
            product.Model = form.Model;
            product.Sku = form.Sku;
            product.Price = form.Price;

            _productRepository.Save(product);

            return RedirectToAction("Index");
        }
    }
}
