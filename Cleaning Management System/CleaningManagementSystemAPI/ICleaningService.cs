using REF_System;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;

namespace CleaningManagementSystemAPI
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "ICleaningService" in both code and config file together.
    [ServiceContract]
    public interface ICleaningService
    {
        [OperationContract]
        [WebInvoke(Method = "POST",
        UriTemplate = "AuthenticateAdmin",
        BodyStyle = WebMessageBodyStyle.Wrapped,
        RequestFormat = WebMessageFormat.Json,
        ResponseFormat = WebMessageFormat.Json)]

        string AuthenticateAdmin(REF_Admin rEF_Admin);

        [OperationContract]
        [WebInvoke(Method = "POST",
        UriTemplate = "InsertGreenCaptain",
        BodyStyle = WebMessageBodyStyle.Wrapped,
        RequestFormat = WebMessageFormat.Json,
        ResponseFormat = WebMessageFormat.Json)]

        string InsertGreenCaptain(REF_GCaptain rEF_GCaptain);

        [OperationContract]
        [WebInvoke(Method = "POST",
        UriTemplate = "AddArticle",
        BodyStyle = WebMessageBodyStyle.Wrapped,
        RequestFormat = WebMessageFormat.Json,
        ResponseFormat = WebMessageFormat.Json)]

        string AddArticle(REF_Article rEF_Article);

        [OperationContract]
        [WebInvoke(Method = "POST",
        UriTemplate = "GTFMemberRegister",
        BodyStyle = WebMessageBodyStyle.Wrapped,
        RequestFormat = WebMessageFormat.Json,
        ResponseFormat = WebMessageFormat.Json)]

        string GTFMemberRegister(REF_GTFMember rEF_GTFMember);

        [OperationContract]
        [WebInvoke(Method = "POST",
        UriTemplate = "AuthenticateMember",
        BodyStyle = WebMessageBodyStyle.Wrapped,
        RequestFormat = WebMessageFormat.Json,
        ResponseFormat = WebMessageFormat.Json)]

        string AuthenticateMember(REF_GTFMember rEF_GTFMember);

        [OperationContract]
        [WebInvoke(Method = "POST",
        UriTemplate = "AddPlace",
        BodyStyle = WebMessageBodyStyle.Wrapped,
        RequestFormat = WebMessageFormat.Json,
        ResponseFormat = WebMessageFormat.Json)]

        string AddPlace(REF_Place rEF_Place);

        [OperationContract]
        [WebInvoke(Method = "POST",
        UriTemplate = "LoadAllPlacesById",
        BodyStyle = WebMessageBodyStyle.Wrapped,
        RequestFormat = WebMessageFormat.Json,
        ResponseFormat = WebMessageFormat.Json)]

        string LoadAllPlacesById(REF_Place rEF_Place);
    }
}
