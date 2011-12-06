using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using TaxDetails.gr.gsis.www1;

namespace TaxDetails
{
    public partial class _Default : System.Web.UI.Page
    {
        #region protected void Page_Load(object sender, EventArgs e)
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        #endregion

        #region protected void btnCallWS_Click(object sender, EventArgs e)
        protected void btnCallWS_Click(object sender, EventArgs e)
        {
            if (txtTaxnoIn != null)
            {
                RgWsBasStoixNRtUser pBasStoixNRec_out = new RgWsBasStoixNRtUser();
                decimal pCallSeqId_out;
                GenWsErrorRtUser pErrorRec_out = new GenWsErrorRtUser();

                pBasStoixNRec_out.registDate = new DateTime(2011, 1, 1);
                pBasStoixNRec_out.stopDate = new DateTime(2011, 1, 1);
                pBasStoixNRec_out.deactivationFlag = "1";
                pBasStoixNRec_out.facActivity = 0;

                pCallSeqId_out = 0;

                RgWsBasStoixN request = new RgWsBasStoixN();
                try
                {
                    request.rgWsBasStoixN(txtTaxnoIn.Text, ref pBasStoixNRec_out, ref pCallSeqId_out, ref pErrorRec_out);
                }
                catch(Exception)
                {
                    throw;
                }
                if (pErrorRec_out.errorCode == null)
                    showResults(pBasStoixNRec_out, pCallSeqId_out, pErrorRec_out);
                else
                    throw new Exception(pErrorRec_out.errorCode + ": " + pErrorRec_out.errorDescr); 
            }
        }
        #endregion
        #region protected void showResults(RgWsBasStoixNRtUser pBasStoixNRec_out, decimal pCallSeqId_out, GenWsErrorRtUser pErrorRec_out)
        protected void showResults(RgWsBasStoixNRtUser pBasStoixNRec_out, decimal pCallSeqId_out, GenWsErrorRtUser pErrorRec_out)
        {
            txtActivityDescr.Text = pBasStoixNRec_out.actLongDescr;
            txtZipCode.Text = pBasStoixNRec_out.postalZipCode;
            if (pBasStoixNRec_out.facActivity.HasValue == true)
                 txtActivity.Text = pBasStoixNRec_out.facActivity.Value.ToString();
            if (pBasStoixNRec_out.registDate.HasValue == true)
                txtStartDate.Text = pBasStoixNRec_out.registDate.Value.ToString();
            if (pBasStoixNRec_out.stopDate.HasValue == true)
                txtEndDate.Text = pBasStoixNRec_out.stopDate.Value.ToString();
            txtDoyDescr.Text = pBasStoixNRec_out.doyDescr;
            txtArea.Text = pBasStoixNRec_out.parDescription;
            if (pBasStoixNRec_out.deactivationFlag == "1")
                rdbtListTaxnoValid.SelectedValue = "Yes";
            else if (pBasStoixNRec_out.deactivationFlag == "2")
                rdbtListTaxnoValid.SelectedValue = "No";
            txtStreetName.Text = pBasStoixNRec_out.postalAddress;
            txtDoyCode.Text = pBasStoixNRec_out.doy;
            txtPhone.Text = pBasStoixNRec_out.firmPhone;
            txtBrandName.Text = pBasStoixNRec_out.commerTitle;
            txtFax.Text = pBasStoixNRec_out.firmFax;
            txtTaxnoOut.Text = pBasStoixNRec_out.afm;
            txtActivity.Text = pBasStoixNRec_out.onomasia;

            lblXactionId.Text = pCallSeqId_out.ToString();
        }
        #endregion
    }
}
