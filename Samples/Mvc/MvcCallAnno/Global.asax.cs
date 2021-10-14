using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;
using System.Web.Routing;

namespace MvcCallAnno
{
    using Anno.Rpc.Client;
    public class WebApiApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            /*
             * ����ע�����ĵ�ַ
             * �ͻ������ƣ�MvcCallAnno
             * ע������IP��127.0.0.1
             * ע�����Ķ˿ڣ�7010
             * ������׷�٣�false��true������false�رգ�
             */
            DefaultConfigManager.SetDefaultConfiguration("MvcCallAnno", "127.0.0.1", 7010, true);
            /*
             * Autofac Ioc ��ʼ��
             */
            AutoFacConfig.Register();
            GlobalConfiguration.Configure(WebApiConfig.Register);
        }
    }
}
