using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;
using DevExpress.XtraEditors;

namespace QLNT
{
    public partial class In : DevExpress.XtraEditors.XtraForm
    {
        public In()
        {
            InitializeComponent();
        }

        private void In_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'QLNTDataSet.DataTable1' table. You can move, or remove it, as needed.
            this.DataTable1TableAdapter.Fill(this.QLNTDataSet.DataTable1);

            this.reportViewer1.RefreshReport();
        }
    }
}