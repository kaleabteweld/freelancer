#pragma checksum "C:\Data\Projects\school\freelancer\Views\Organizions\ListOrg.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "e22353c20905d411e3ee047f9a0010e5a159291c"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Organizions_ListOrg), @"mvc.1.0.view", @"/Views/Organizions/ListOrg.cshtml")]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#nullable restore
#line 1 "C:\Data\Projects\school\freelancer\Views\_ViewImports.cshtml"
using freelancer;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "C:\Data\Projects\school\freelancer\Views\_ViewImports.cshtml"
using freelancer.Models;

#line default
#line hidden
#nullable disable
#nullable restore
#line 3 "C:\Data\Projects\school\freelancer\Views\_ViewImports.cshtml"
using Microsoft.AspNetCore.Identity;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"e22353c20905d411e3ee047f9a0010e5a159291c", @"/Views/Organizions/ListOrg.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"f7b63c4c39523b585b78a44ae8260e83fea482f1", @"/Views/_ViewImports.cshtml")]
    #nullable restore
    public class Views_Organizions_ListOrg : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<List<Organizion>>
    #nullable disable
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral("\r\n");
#nullable restore
#line 3 "C:\Data\Projects\school\freelancer\Views\Organizions\ListOrg.cshtml"
 foreach (var item in Model)
{
    

#line default
#line hidden
#nullable disable
#nullable restore
#line 5 "C:\Data\Projects\school\freelancer\Views\Organizions\ListOrg.cshtml"
Write(Html.Partial("_orgCard",item));

#line default
#line hidden
#nullable disable
#nullable restore
#line 5 "C:\Data\Projects\school\freelancer\Views\Organizions\ListOrg.cshtml"
                                  ;

}

#line default
#line hidden
#nullable disable
        }
        #pragma warning restore 1998
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; } = default!;
        #nullable disable
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; } = default!;
        #nullable disable
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; } = default!;
        #nullable disable
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; } = default!;
        #nullable disable
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<List<Organizion>> Html { get; private set; } = default!;
        #nullable disable
    }
}
#pragma warning restore 1591
