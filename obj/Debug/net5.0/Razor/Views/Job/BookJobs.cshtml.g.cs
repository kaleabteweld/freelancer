#pragma checksum "C:\Users\user\Desktop\Free\freelancer\Views\Job\BookJobs.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "21a5a028baba5f2f7b0f7b1ff2bfca40f678b058"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Job_BookJobs), @"mvc.1.0.view", @"/Views/Job/BookJobs.cshtml")]
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
#line 1 "C:\Users\user\Desktop\Free\freelancer\Views\_ViewImports.cshtml"
using freelancer;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "C:\Users\user\Desktop\Free\freelancer\Views\_ViewImports.cshtml"
using freelancer.Models;

#line default
#line hidden
#nullable disable
#nullable restore
#line 3 "C:\Users\user\Desktop\Free\freelancer\Views\_ViewImports.cshtml"
using Microsoft.AspNetCore.Identity;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"21a5a028baba5f2f7b0f7b1ff2bfca40f678b058", @"/Views/Job/BookJobs.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"f7b63c4c39523b585b78a44ae8260e83fea482f1", @"/Views/_ViewImports.cshtml")]
    public class Views_Job_BookJobs : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<List<PostJob>>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
#nullable restore
#line 2 "C:\Users\user\Desktop\Free\freelancer\Views\Job\BookJobs.cshtml"
  
    ViewData["Title"] = "Book Jobs";

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n\r\n");
#nullable restore
#line 7 "C:\Users\user\Desktop\Free\freelancer\Views\Job\BookJobs.cshtml"
 foreach (var item in Model)
{
    

#line default
#line hidden
#nullable disable
#nullable restore
#line 9 "C:\Users\user\Desktop\Free\freelancer\Views\Job\BookJobs.cshtml"
Write(Html.Partial("_JobCard",item));

#line default
#line hidden
#nullable disable
#nullable restore
#line 9 "C:\Users\user\Desktop\Free\freelancer\Views\Job\BookJobs.cshtml"
                                  
    ;
}

#line default
#line hidden
#nullable disable
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<List<PostJob>> Html { get; private set; }
    }
}
#pragma warning restore 1591
