using BAL_System;
using Newtonsoft.Json;
using REF_System;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace CleaningManagementSystemAPI
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "CleaningService" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select CleaningService.svc or CleaningService.svc.cs at the Solution Explorer and start debugging.
    public class CleaningService : ICleaningService
    {
        public string AddArticle(REF_Article rEF_Article)
        {
            try
            {
                BAL_Article bAL_Article = new BAL_Article();

                DataTable dt;
                dt = bAL_Article.AddArticle(null, rEF_Article);
                Response response = new Response();
                response.Success = true;
                response.dataTable = dt;
                return JsonConvert.SerializeObject(response);
            }
            catch (Exception ex)
            {
                Response response = new Response();
                response.Success = false;
                response.Message = "Error! Something went wrong. Please contact the system administrator. (" + ex.Message + ")";
                return JsonConvert.SerializeObject("Error! Something went wrong. Please contact the system administrator.");
            }
        }

        public string AddCollector(REF_Collector rEF_Collector)
        {
            try
            {
                BAL_Collector bAL_Collector = new BAL_Collector();

                DataTable dt;
                dt = bAL_Collector.AddCollector(null, rEF_Collector);
                Response response = new Response();
                response.Success = true;
                response.dataTable = dt;
                return JsonConvert.SerializeObject(response);
            }
            catch (Exception ex)
            {
                Response response = new Response();
                response.Success = false;
                response.Message = "Error! Something went wrong. Please contact the system administrator. (" + ex.Message + ")";
                return JsonConvert.SerializeObject("Error! Something went wrong. Please contact the system administrator.");
            }
        }

        public string AddPlace(REF_Place rEF_Place)
        {
            try
            {
                BAL_Place bAL_Place = new BAL_Place();

                DataTable dt;
                dt = bAL_Place.AddPlace(null, rEF_Place);
                Response response = new Response();
                response.Success = true;
                response.dataTable = dt;
                return JsonConvert.SerializeObject(response);
            }
            catch (Exception ex)
            {
                Response response = new Response();
                response.Success = false;
                response.Message = "Error! Something went wrong. Please contact the system administrator. (" + ex.Message + ")";
                return JsonConvert.SerializeObject("Error! Something went wrong. Please contact the system administrator.");
            }
        }

        public string ApprovePlace(REF_Place rEF_Place)
        {
            try
            {
                BAL_Place bAL_Place = new BAL_Place();

                DataTable dt;
                dt = bAL_Place.ApprovePlace(null, rEF_Place);
                Response response = new Response();
                response.Success = true;
                response.dataTable = dt;
                return JsonConvert.SerializeObject(response);
            }
            catch (Exception ex)
            {
                Response response = new Response();
                response.Success = false;
                response.Message = "Error! Something went wrong. Please contact the system administrator. (" + ex.Message + ")";
                return JsonConvert.SerializeObject("Error! Something went wrong. Please contact the system administrator.");
            }
        }

        public string AuthenticateAdmin(REF_Admin rEF_Admin)
        {
            try
            {
                BAL_Admin bAL_Employee = new BAL_Admin();

                DataTable dt;
                dt = bAL_Employee.AuthenticateAdmin(null, rEF_Admin);
                Response response = new Response();
                response.Success = true;
                response.dataTable = dt;
                return JsonConvert.SerializeObject(response);
            }
            catch (Exception ex)
            {
                Response response = new Response();
                response.Success = false;
                response.Message = "Error! Something went wrong. Please contact the system administrator. (" + ex.Message + ")";
                return JsonConvert.SerializeObject("Error! Something went wrong. Please contact the system administrator.");
            }
        }

        public string AuthenticateCollector(REF_Collector rEF_Collector)
        {
            try
            {
                BAL_Collector bAL_Collector = new BAL_Collector();

                DataTable dt;
                dt = bAL_Collector.AuthenticateCollector(null, rEF_Collector);
                Response response = new Response();
                response.Success = true;
                response.dataTable = dt;
                return JsonConvert.SerializeObject(response);
            }
            catch (Exception ex)
            {
                Response response = new Response();
                response.Success = false;
                response.Message = "Error! Something went wrong. Please contact the system administrator. (" + ex.Message + ")";
                return JsonConvert.SerializeObject("Error! Something went wrong. Please contact the system administrator.");
            }
        }

        public string AuthenticateGreenCaptain(REF_GCaptain rEF_GCaptain)
        {
            try
            {
                BAL_GCaptain bAL_GCaptain = new BAL_GCaptain();

                DataTable dt;
                dt = bAL_GCaptain.AuthenticateGreenCaptain(null, rEF_GCaptain);
                Response response = new Response();
                response.Success = true;
                response.dataTable = dt;
                return JsonConvert.SerializeObject(response);
            }
            catch (Exception ex)
            {
                Response response = new Response();
                response.Success = false;
                response.Message = "Error! Something went wrong. Please contact the system administrator. (" + ex.Message + ")";
                return JsonConvert.SerializeObject("Error! Something went wrong. Please contact the system administrator.");
            }
        }

        public string AuthenticateMember(REF_GTFMember rEF_GTFMember)
        {
            try
            {
                BAL_GTFMember bAL_GTFMember = new BAL_GTFMember();

                DataTable dt;
                dt = bAL_GTFMember.AuthenticateMember(null, rEF_GTFMember);
                Response response = new Response();
                response.Success = true;
                response.dataTable = dt;
                return JsonConvert.SerializeObject(response);
            }
            catch (Exception ex)
            {
                Response response = new Response();
                response.Success = false;
                response.Message = "Error! Something went wrong. Please contact the system administrator. (" + ex.Message + ")";
                return JsonConvert.SerializeObject("Error! Something went wrong. Please contact the system administrator.");
            }
        }

        public string DeletePlace(REF_Place rEF_Place)
        {
            try
            {
                BAL_Place bAL_Place = new BAL_Place();

                DataTable dt;
                dt = bAL_Place.DeletePlace(null, rEF_Place);
                Response response = new Response();
                response.Success = true;
                response.dataTable = dt;
                return JsonConvert.SerializeObject(response);
            }
            catch (Exception ex)
            {
                Response response = new Response();
                response.Success = false;
                response.Message = "Error! Something went wrong. Please contact the system administrator. (" + ex.Message + ")";
                return JsonConvert.SerializeObject("Error! Something went wrong. Please contact the system administrator.");
            }
        }

        public string DonePlace(REF_Place rEF_Place)
        {
            try
            {
                BAL_Place bAL_Place = new BAL_Place();

                DataTable dt;
                dt = bAL_Place.DonePlace(null, rEF_Place);
                Response response = new Response();
                response.Success = true;
                response.dataTable = dt;
                return JsonConvert.SerializeObject(response);
            }
            catch (Exception ex)
            {
                Response response = new Response();
                response.Success = false;
                response.Message = "Error! Something went wrong. Please contact the system administrator. (" + ex.Message + ")";
                return JsonConvert.SerializeObject("Error! Something went wrong. Please contact the system administrator.");
            }
        }

        public string FlagPlace(REF_Place rEF_Place)
        {
            try
            {
                BAL_Place bAL_Place = new BAL_Place();

                DataTable dt;
                dt = bAL_Place.FlagPlace(null, rEF_Place);
                Response response = new Response();
                response.Success = true;
                response.dataTable = dt;
                return JsonConvert.SerializeObject(response);
            }
            catch (Exception ex)
            {
                Response response = new Response();
                response.Success = false;
                response.Message = "Error! Something went wrong. Please contact the system administrator. (" + ex.Message + ")";
                return JsonConvert.SerializeObject("Error! Something went wrong. Please contact the system administrator.");
            }
        }

        public string GTFMemberRegister(REF_GTFMember rEF_GTFMember)
        {
            try
            {
                BAL_GTFMember bAL_GTFMember = new BAL_GTFMember();

                DataTable dt;
                dt = bAL_GTFMember.GTFMemberRegister(null, rEF_GTFMember);
                Response response = new Response();
                response.Success = true;
                response.dataTable = dt;
                return JsonConvert.SerializeObject(response);
            }
            catch (Exception ex)
            {
                Response response = new Response();
                response.Success = false;
                response.Message = "Error! Something went wrong. Please contact the system administrator. (" + ex.Message + ")";
                return JsonConvert.SerializeObject("Error! Something went wrong. Please contact the system administrator.");
            }
        }

        public string InsertGreenCaptain(REF_GCaptain rEF_GCaptain)
        {
            try
            {
                BAL_GCaptain bAL_GCaptain = new BAL_GCaptain();

                DataTable dt;
                dt = bAL_GCaptain.InsertGreenCaptain(null, rEF_GCaptain);
                Response response = new Response();
                response.Success = true;
                response.dataTable = dt;
                return JsonConvert.SerializeObject(response);
            }
            catch (Exception ex)
            {
                Response response = new Response();
                response.Success = false;
                response.Message = "Error! Something went wrong. Please contact the system administrator. (" + ex.Message + ")";
                return JsonConvert.SerializeObject("Error! Something went wrong. Please contact the system administrator.");
            }
        }

        public string LoadAllApprovedPlaces()
        {
            DataTable dt = new DataTable();

            try
            {
                BAL_Place bAL_Place = new BAL_Place();

                dt = bAL_Place.LoadAllApprovedPlaces(null);

                return JsonConvert.SerializeObject(dt);
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }

        public string LoadAllArticles()
        {
            DataTable dt = new DataTable();

            try
            {
                BAL_Article bAL_Article = new BAL_Article();

                dt = bAL_Article.LoadAllArticles(null);

                return JsonConvert.SerializeObject(dt);
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }

        public string LoadAllPlaces()
        {
            DataTable dt = new DataTable();

            try
            {
                BAL_Place bAL_Place = new BAL_Place();

                dt = bAL_Place.LoadAllPlaces(null);

                return JsonConvert.SerializeObject(dt);
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }

        public string LoadAllPlacesById(REF_Place rEF_Place)
        {
            DataTable dt = new DataTable();

            try
            {
                BAL_Place bAL_Place = new BAL_Place();

                dt = bAL_Place.LoadAllPlacesById(null, rEF_Place);

                return JsonConvert.SerializeObject(dt);
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }

        public string LoadPlaceById(REF_Place rEF_Place)
        {
            DataTable dt = new DataTable();

            try
            {
                BAL_Place bAL_Place = new BAL_Place();

                dt = bAL_Place.LoadPlaceById(null, rEF_Place);

                return JsonConvert.SerializeObject(dt);
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }

        public string RejectPlace(REF_Place rEF_Place)
        {
            try
            {
                BAL_Place bAL_Place = new BAL_Place();

                DataTable dt;
                dt = bAL_Place.RejectPlace(null, rEF_Place);
                Response response = new Response();
                response.Success = true;
                response.dataTable = dt;
                return JsonConvert.SerializeObject(response);
            }
            catch (Exception ex)
            {
                Response response = new Response();
                response.Success = false;
                response.Message = "Error! Something went wrong. Please contact the system administrator. (" + ex.Message + ")";
                return JsonConvert.SerializeObject("Error! Something went wrong. Please contact the system administrator.");
            }
        }

        public string UpdatePlace(REF_Place rEF_Place)
        {
            try
            {
                BAL_Place bAL_Place = new BAL_Place();

                DataTable dt;
                dt = bAL_Place.UpdatePlace(null, rEF_Place);
                Response response = new Response();
                response.Success = true;
                response.dataTable = dt;
                return JsonConvert.SerializeObject(response);
            }
            catch (Exception ex)
            {
                Response response = new Response();
                response.Success = false;
                response.Message = "Error! Something went wrong. Please contact the system administrator. (" + ex.Message + ")";
                return JsonConvert.SerializeObject("Error! Something went wrong. Please contact the system administrator.");
            }
        }
    }
}
