using Microsoft.AspNetCore.Mvc.RazorPages;
using System.Xml.Xsl;

namespace sugupuuRakendusXMLZone.Pages
{
    public class ContactModel : PageModel
    {
        public string TransformedXml { get; private set; } = "";

        private readonly IWebHostEnvironment _hostingEnvironment;

        public ContactModel(IWebHostEnvironment hostingEnvironment)
        {
            _hostingEnvironment = hostingEnvironment;
        }

        public void OnGet()
        {
            string xmlPath = Path.Combine(
                _hostingEnvironment.WebRootPath,
                "martinSugupuu.xml"
            );

            string xsltPath = Path.Combine(
                _hostingEnvironment.WebRootPath,
                "martinSugupuu.xslt"
            );

            try
            {
                var xslt = new XslCompiledTransform();
                xslt.Load(xsltPath);

                using (var sw = new StringWriter())
                {
                    xslt.Transform(xmlPath, null, sw);
                    TransformedXml = sw.ToString();
                }
            }
            catch (Exception ex)
            {
                TransformedXml = $"<p>Viga: {ex.Message}</p>";
            }
        }
    }
}