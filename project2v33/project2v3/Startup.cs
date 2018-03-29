using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(project2v3.Startup))]
namespace project2v3
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
