using System;
using System.Web.Mvc;

public class SearchController : Controller
{
    public ActionResult Index()
    {
        return View();
    }

    [HttpPost]
    public ActionResult Search(string productName, string size, decimal? price, DateTime? mfgDate, string category, string conjunction)
    {
           var searchResults = ProductService.SearchProducts(productName, size, price, mfgDate, category, conjunction);
        return View("Index", searchResults);
    }
}
