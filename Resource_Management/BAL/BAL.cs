using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace Resource_Management.BAL
{
    public class BAL
    {
        DAL.DLL dl = new DAL.DLL();
        string SqlQuery = "";

        public int Login(string typ, string id, string pwd)
        {
            string SqlQuery = "";

            if (typ == "Admin")
            {
                SqlQuery = string.Format("select count(*) from tbl_admin where UserID='{0}' and Password='{1}'", id, pwd);
            }
            else
                if (typ == "HRStaff")
                {
                    SqlQuery = string.Format("select count(*) from tbl_staff where SUserID='{0}' and SPassword='{0}'", id, pwd);
                }
                else
                    if (typ == "Jobseeker")
                    {
                        SqlQuery = string.Format("select count(*) from tbl_candidate where userID='{0}' and password='{1}'", id, pwd);
                    }
                    else
                        if (typ == "Employer")
                        {
                            SqlQuery = string.Format("select count(*) from tbl_company where userID='{0}' and password='{1}' and status='Approved' ", id, pwd);
                        }
            
            return dl.Aggregate(SqlQuery);
        }

        #region domain

        public DataTable fill_Domain_data()
        {
            SqlQuery = string.Format("select * from tbl_Domain");
            return dl.DoNonTransaction(SqlQuery);
        }

        public int delete_domain(int did)
        {
            SqlQuery = string.Format("delete from tbl_Domain where DomainID={0}",did);
            return dl.DoTransaction(SqlQuery);
        }

        public int update_domain(string name,int did)
        {
            SqlQuery = string.Format("update tbl_Domain set DomainName='{0}' where DomainID={1}",name,did);
            return dl.DoTransaction(SqlQuery);
        }

        public int add_domain(string name)
        {
            SqlQuery = string.Format("insert into tbl_Domain DomainName values '{0}'",name);
            return dl.DoTransaction(SqlQuery);
        }

        #endregion
        
        #region staff

        public int insert_staff(string name,string addr,string phone,string doj,string desig, string qual,string ctc, string uid,string pwd)
        {
            SqlQuery = string.Format("INSERT INTO tbl_staff (Sname, SAddress, SPhone, SDOJ, SDesignation, SQualification, SCTC, SUserID, SPassword) VALUES ('{0}','{1}','{2}','{3}','{4}','{5}',{6},'{7}','{8}')", name, addr, phone, doj, desig, qual, ctc, uid, pwd);
            return dl.DoTransaction(SqlQuery);
        }
        public int delete_staff(int id)
        {
            SqlQuery = string.Format("DELETE FROM tbl_staff WHERE StaffID='{0}'", id);
            return dl.DoTransaction(SqlQuery);
        }

        //public DataTable fill_company_approved()
        //{
        //    SqlQuery = string.Format("select compID,compName from tbl_company");
        //    return dl.DoNonTransaction(SqlQuery);
        //}
        public DataTable fill_company_approved()
        {
            SqlQuery = string.Format("select * from tbl_company where status='Approved'");
            return dl.DoNonTransaction(SqlQuery);
        }

        public DataTable fill_staffs()
        {
            string SqlQuery = string.Format("select * from tbl_staff");
            return dl.DoNonTransaction(SqlQuery);
        }

        public int update_staff(string name,string addr,string phone,string doj,string desig, string qual,string ctc, string uid,string pwd,int id)
        {
            SqlQuery = string.Format("update tbl_staff set Sname='{0}',SAddress='{1}',SPhone='{2}',SDOJ='{3}',SDesignation='{4}',SQualification='{5}',SCTC='{6}',SUserID='{7}',SPassword='{8}' where StaffID={9}", name, addr, phone, doj, desig, qual, ctc, uid, pwd,id);
            return dl.DoTransaction(SqlQuery);
        }

        public int change_password(string pwd,int staffid,string oldpwd)
        {
            SqlQuery = string.Format("update tbl_staff set SPassword='{0}' where StaffID={1} and SPassword='{2}'", pwd, staffid, oldpwd);
            return dl.DoTransaction(SqlQuery);
        }

        public DataTable get_staff(string uid, string pwd)
        {
            SqlQuery = string.Format("select * from tbl_staff where SUserID='{0}' and SPassword='{1}'",uid,pwd);
            return dl.DoNonTransaction(SqlQuery);
        }

        public int update_profile(string name,string addr, string phone,string doj,string desig,string qual,string ctc,int id)
        {
            SqlQuery = string.Format("update tbl_staff set Sname='{0}',SAddress='{1}',SPhone='{2}',SDOJ='{3}',SDesignation='{4}',SQualification='{5}',SCTC='{6}' where StaffID={7}",name,addr,phone,doj,desig,qual,ctc,id);
            return dl.DoTransaction(SqlQuery);
        }

        public DataTable load_assigned(int id,string domain)
        {
            SqlQuery = string.Format("SELECT assignedID, Domain, reqCount, lastdate, status, StaffID, reqExp FROM tbl_HR_assigned_req WHERE (StaffID = {0} and status='Assigned' and Domain='{1}')", id,domain);
            return dl.DoNonTransaction(SqlQuery);
        }

        //public DataTable fill_domainss(int id)
        //{
        //    SqlQuery = string.Format("SELECT assignedID, Domain FROM tbl_HR_assigned_req where StaffID={0}",id);
        //    return dl.DoNonTransaction(SqlQuery);
        //}

        //public DataTable fill_Domain_data()
        //{
        //    SqlQuery = string.Format("select * from tbl_Domain");
        //    return dl.DoNonTransaction(SqlQuery);
        //}
        //public int update_assign_status(string status,int id)
        //{
        //    SqlQuery = string.Format("update tbl_requirement set status='{0}' where reqID={1}",status,id);
        //    return dl.DoTransaction(SqlQuery);
        //}

        public DataTable get_req_id()
        {
            SqlQuery = string.Format("SELECT tbl_requirement.reqID FROM tbl_requirement INNER JOIN tbl_staff ON tbl_requirement.reqID = tbl_staff.reqID");
            return dl.DoNonTransaction(SqlQuery);
        }

        public DataTable load_unplaced(string domain)
        {
            SqlQuery = string.Format("select * from tbl_candidate where status='Pending' and Domain='{0}'",domain);
            //SqlQuery = string.Format("SELECT tbl_candidate.candID, tbl_candidate.candName, tbl_candidate.candAddr, tbl_candidate.candPhone, tbl_candidate.DOReg, tbl_candidate.candQualification, tbl_candidate.candExp, tbl_candidate.expectedCTC, tbl_candidate.userID, tbl_candidate.password, tbl_candidate.status, tbl_candidate.Domain, tbl_candidate.EmailID, tbl_candidate.Designation FROM tbl_candidate INNER JOIN tbl_HR_assigned_req ON tbl_candidate.candExp <= tbl_HR_assigned_req.reqExp WHERE (tbl_candidate.status = 'Pending') AND (tbl_candidate.Domain = '{0}')",domain);
            return dl.DoNonTransaction(SqlQuery);
        }

        public int update_selected(string status,int id)
        {
            SqlQuery = string.Format("update tbl_candidate set status='{0}' where candID={1}", status, id);
            return dl.DoTransaction(SqlQuery);
        }

        public int add_placed_candidates(string name,string addr, string phone,string company,string designation,int ctc,string status,int candid,int Did,int staffid)
        {
            SqlQuery = string.Format("insert into tbl_placed_candidate (P_candName,P_candAddress,P_candPhone,P_Company,P_Designation,P_CTC,P_Status,candID,domainid,StaffID) values ('{0}','{1}','{2}','{3}','{4}',{5},'{6}',{7},{8},{9})", name, addr, phone, company, designation, ctc, status, candid, Did,staffid);
            return dl.DoTransaction(SqlQuery);
        }

        public int update_placedCandidate(int id, string status, int staffid)
        {
            SqlQuery = string.Format("update tbl_placed_candidate set P_Status='{0}' where candID={1} and StaffID={2}",status,id,staffid);
            return dl.DoTransaction(SqlQuery);
        }
        public DataTable load_selected_cand(int staffid, string status)
        {
            SqlQuery = string.Format("select * from tbl_placed_candidate where P_Status='{0}' and StaffID={1}",status,staffid);
            return dl.DoNonTransaction(SqlQuery);
        }
        #endregion

        #region Employer
        public int insert_employer(string name, string addr, string ph, DateTime date,string status, string incharge, string contact, string uid, string pwd)
        {
            SqlQuery = string.Format("insert into tbl_company (compName,compAddress,compPhone,tieup_date,status,incharge_person,contact,userID,password) values ('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}')", name, addr, ph, date, status, incharge, contact, uid, pwd);

            return dl.DoTransaction(SqlQuery);
        }

        public int update_employer(string status, int id)
        {
            SqlQuery = string.Format("update tbl_company set status='{0}' where compID={1}",status,id);
            return dl.DoTransaction(SqlQuery);
        }
        public int update_status(string status,int id)
        {
            SqlQuery = string.Format("update tbl_requirement set status='{0}' where reqID={1}", status, id);
            return dl.DoTransaction(SqlQuery);
        }

        public DataTable fill_employer()
        {
            SqlQuery = string.Format("select * from tbl_company where status='Pending'");
            return dl.DoNonTransaction(SqlQuery);
        }

        public DataTable fill_company()
        {
            SqlQuery = string.Format("select * from tbl_company where status='Approved'");
            return dl.DoNonTransaction(SqlQuery);
        }

        public DataTable fill_company_candidate_list()
        {
            SqlQuery = string.Format("SELECT DISTINCT tbl_company.compName,tbl_company.compID FROM tbl_company INNER JOIN tbl_requirement ON tbl_company.compID = tbl_requirement.compID WHERE (tbl_company.status = 'Approved') AND (tbl_requirement.status = 'Assigned')");
            return dl.DoNonTransaction(SqlQuery);
        }
        public DataTable view_employer(string uid,string pwd)
        {
            SqlQuery = string.Format("select * from tbl_company where userID='{0}' and password='{1}'", uid, pwd);
            return dl.DoNonTransaction(SqlQuery);
        }
        public int update_emp_profile(string name, string addr, string ph, string incharge, string contact, int Cid)
        {
            SqlQuery = string.Format("update tbl_company set compName='{0}', compAddress='{1}', compPhone='{2}', incharge_person='{3}', contact='{4}' where compID='{5}'",name,addr,ph,incharge,contact,Cid);
            return dl.DoTransaction(SqlQuery);
        }

        public int change_pwd(int compid, string oldpwd, string pwd)
        {
            SqlQuery = string.Format("update tbl_company set password='{0}' where compid={1} and password='{2}'",pwd,compid,oldpwd);
            return dl.DoTransaction(SqlQuery);
        }

        //public DataTable get_filled_req(int compid)
        //{
        //    SqlQuery = string.Format("select * from tbl_requirement where compID={0} and status='Filled'",compid);
        //    return dl.DoNonTransaction(SqlQuery);
        //}

        public DataTable get_requirments(int compid)
        {
            SqlQuery = string.Format("select * from tbl_requirement where compID={0} and status!='Filled'",compid);
            return dl.DoNonTransaction(SqlQuery);
        }

        #endregion

        #region Jobseeker
        public int add_jobseeker(string name, string addr, string ph, DateTime date, string qual, float exp, int ctc, string uid, string pwd,string status,string domain,string email,string designation)
        {
            SqlQuery = string.Format("insert into tbl_candidate (candName,candAddr,candPhone,DOReg,candQualification,candExp,expectedCTC,userID,password,status,Domain,EmailID,designation) values ('{0}','{1}','{2}','{3}','{4}',{5},{6},'{7}','{8}','{9}','{10}','{11}','{12}')", name, addr, ph, date, qual, exp, ctc, uid, pwd,status,domain,email,designation);

            return dl.DoTransaction(SqlQuery);
        }

        public DataTable fill_unplaced_toEmail()
        {
            SqlQuery = string.Format("SELECT candID, candName, candQualification, candExp, expectedCTC, status, Domain, EmailID FROM tbl_candidate WHERE (status = 'pending')");
            return dl.DoNonTransaction(SqlQuery);
        }

        public DataTable fill_domine_unplaced()
        {
            SqlQuery = string.Format("SELECT candID, Domain FROM tbl_candidate where status='Pending'");
            return dl.DoNonTransaction(SqlQuery);
        }

        public DataTable getstatus(int id)
        {
            SqlQuery = string.Format("select status from tbl_candidate where candID={0}",id);
            return dl.DoNonTransaction(SqlQuery);
        }
        public DataTable get_profile(string uid, string pwd)
        {
            SqlQuery = string.Format("select * from tbl_candidate where userID='{0}' and password='{1}'", uid, pwd);
            return dl.DoNonTransaction(SqlQuery);
        }
        public int change_cand_pwd(int id, string old, string newP)
        {
            SqlQuery = string.Format("update tbl_candidate set password='{0}' where candID={1} and password='{2}'", newP, id, old);
            return dl.DoTransaction(SqlQuery);
        }

        public int update_Candprofile(int id, string name, string addr, string phone, string email, string qual, float exp, int ctc, string domains)
        {
            SqlQuery = string.Format("update tbl_candidate set candName='{0}',candAddr='{1}',candPhone='{2}',candQualification='{3}',candExp={4},expectedCTC={5},Domain='{6}',EmailID='{7}' where candID={8}",name,addr,phone,qual,exp,ctc,domains,email,id);
            return dl.DoTransaction(SqlQuery);
        }

        public DataTable get_placed()
        {
            SqlQuery = string.Format("select * from tbl_placed_candidate");
            return dl.DoNonTransaction(SqlQuery);
        }

        public DataTable get_placed_comp(string compname)
        {
            SqlQuery = string.Format("select * from tbl_placed_candidate where P_Company='{0}' and P_Status='Joined'",compname);
            return dl.DoNonTransaction(SqlQuery);
        }
        public DataTable get_compname(int id)
        {
            SqlQuery = string.Format("select compName from tbl_company where compID={0}",id);
            return dl.DoNonTransaction(SqlQuery);
        }
        #endregion

        #region external_service
        public int add_service(string name, string addr, string ph, string service, string pay, DateTime sdate)
        {
            SqlQuery = string.Format("insert into tbl_Service(extName,extAddress,extPhone,extService,extPayment,startdate) values ('{0}','{1}','{2}','{3}','{4}','{5}')", name, addr, ph, service, pay, sdate);
            return dl.DoTransaction(SqlQuery);
        }
        public DataTable fill_service()
        {
            SqlQuery = string.Format("select * from tbl_Service");
            return dl.DoNonTransaction(SqlQuery);
        }

        public int update_service(string name, string addr, string ph, string service, string pay, DateTime sdate,int id)
        {
            SqlQuery = string.Format("update tbl_Service set extName='{0}',extAddress='{1}',extPhone='{2}',extService='{3}',extPayment='{4}',startdate='{5}' where extID={6}", name, addr, ph, service, pay, sdate,id);
            return dl.DoTransaction(SqlQuery);
        }
       
        public int delete_service(int id)
        {
            SqlQuery = string.Format("delete from tbl_Service where extID={0}", id);
            return dl.DoTransaction(SqlQuery);
        }
        #endregion

        #region requirment

        public DataTable fill_requirment()
        {
            SqlQuery = string.Format("SELECT tbl_requirement.reqID, tbl_requirement.reqDesignation, tbl_requirement.reqCount, tbl_requirement.jobDesc, tbl_requirement.reqExp, tbl_requirement.CTC, tbl_requirement.lastdate,tbl_requirement.compID, tbl_requirement.status, tbl_requirement.Domain, tbl_company.compName FROM tbl_requirement INNER JOIN tbl_company ON tbl_requirement.compID = tbl_company.compID where tbl_requirement.status='Pending'");
            return dl.DoNonTransaction(SqlQuery);
        }

        public int delete_req(int reqid)
        {
            SqlQuery = string.Format("delete from tbl_requirement where reqID={0}",reqid);
            return dl.DoTransaction(SqlQuery);
        }

        public int update_req(int reqid, string reqDesignation, int reqCount, string jobDesc, string Domain, float reqExp, int CTC, DateTime lastdate, int Did)
        {
            SqlQuery = string.Format("update tbl_requirement set reqDesignation='{0}',reqCount={1},jobDesc='{2}',Domain='{3}',reqExp={4},CTC={5},lastdate='{6}',DomainID={7} where reqID={8}", reqDesignation, reqCount, jobDesc, Domain, reqExp, CTC, lastdate, Did, reqid);
            return dl.DoTransaction(SqlQuery);
        }

        public DataTable ddl_fill_staff()
        {
            SqlQuery = string.Format("select StaffID,SName from tbl_staff");
            return dl.DoNonTransaction(SqlQuery);
        }
        public int assign_requirement(string domain,int count,DateTime date,string status,int Sid,float exp)
        {
            SqlQuery = string.Format("INSERT INTO tbl_HR_assigned_req(Domain,reqCount,lastdate,status,StaffID,reqExp) values ('{0}',{1},'{2}','{3}',{4},{5})", domain, count, date, status, Sid, exp);
            return dl.DoTransaction(SqlQuery);
        }

        public int set_assign_status(string status,int id)
        {
            SqlQuery = string.Format("update tbl_HR_assigned_req set status='{0}' where assignedID={1}",status,id);
            return dl.DoTransaction(SqlQuery);
        }
        public int set_status(int id, string status)
        {
            SqlQuery = string.Format("update tbl_company set status='{0}' where reqID={1}", status, id);
            return dl.DoTransaction(SqlQuery);
        }
        public int comp_requirement(string desig,int count,string job_desc,float exp,int ctc,DateTime ldate,int compid,string status,string domain,int Did)
        {
            SqlQuery = string.Format("insert into tbl_requirement(reqDesignation,reqCount,jobDesc,reqExp,CTC,lastdate,compID,status,Domain,DomainID) values ('{0}',{1},'{2}',{3},{4},'{5}',{6},'{7}','{8}',{9})",desig,count,job_desc,exp,ctc,ldate,compid,status,domain,Did);
            return dl.DoTransaction(SqlQuery);
        }
        public DataTable get_compID(string uid,string pwd)
        {
            SqlQuery = string.Format("select compID from tbl_company where userID='{0}' and password='{1}'", uid, pwd);
            return dl.DoNonTransaction(SqlQuery);
        }

        #endregion
    }
}