using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Credit_Calculator.Startup))]
namespace Credit_Calculator
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
