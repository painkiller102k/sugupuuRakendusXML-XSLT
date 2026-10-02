using Microsoft.AspNetCore.Mvc.RazorPages;
using System.Xml.Xsl;

namespace sugupuuRakendusXMLZone.Pages
{
    public class IndexModel : PageModel
    {
        public string TransformedXml { get; private set; } = "";

        private readonly IWebHostEnvironment _hostingEnvironment;

        public IndexModel(IWebHostEnvironment hostingEnvironment)
        {
            _hostingEnvironment = hostingEnvironment;
        }

        public void OnGet()
        {
            try
            {
                string xmlPath = Path.Combine(
                    _hostingEnvironment.WebRootPath,
                    "ElizavetaSugupuu.xml"
                );

                string xsltPath = Path.Combine(
                    _hostingEnvironment.WebRootPath,
                    "martinSugupuu.xslt"
                );

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