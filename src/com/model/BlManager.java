package com.model;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;

import com.pojo.Admin;
import com.pojo.Candidateregistration;
import com.pojo.Castvote;

import com.pojo.Party;
import com.pojo.Voterregistration;

public class BlManager {
	SessionFactory factory = new Configuration().configure().buildSessionFactory();

	public void savedata(Voterregistration v) {

		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		session.save(v);
		transaction.commit();
		session.close();

	}

	public void savedata(Candidateregistration c) {
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		session.save(c);
		transaction.commit();
		session.close();

	}

	public boolean searchVoterEmailPass(String vemailId, String vpassword) {
		Voterregistration v = searchVoterEP(vemailId, vpassword);

		System.out.println(v);

		if (vemailId.equals(v.getVemailId()) && (vpassword.equals(v.getVpassword()))) {
			return true;
		} else {
			return false;
		}
	}

	private Voterregistration searchVoterEP(String vemailId, String vpassword) {
		Session session = factory.openSession();
		Criteria criteria = session.createCriteria(Voterregistration.class);
		criteria.add(Restrictions.eq("vemailId", vemailId));
		// criteria.add(Restrictions.eq("vpassword",vpassword));
		Voterregistration v = (Voterregistration) criteria.uniqueResult();
		session.close();
		return v;
	}

	public boolean searchVotereStatus(String vemailId, String vstatus1) {
		Voterregistration v = searchVotereStatus1(vemailId, vstatus1);
		System.out.println(v);
		if (vemailId.equals(v.getVemailId()) && (vstatus1.equals(v.getVstatus1()))) {
			System.out.print("searchVotereStatus true");
			System.out.println(vstatus1);
			System.out.println(v.getVstatus1());
			return true;
		} else {
			System.out.print("searchVotereStatus false");
			System.out.println(vstatus1);
			System.out.println(v.getVstatus1());
			return false;
		}
	}

	private Voterregistration searchVotereStatus1(String vemailId, String vstatus1) {
		Session session = factory.openSession();
		Criteria criteria = session.createCriteria(Voterregistration.class);
		criteria.add(Restrictions.eq("vemailId", vemailId));
		System.out.println(vstatus1);
		criteria.add(Restrictions.eq("vstatus1", vstatus1));
		Voterregistration v = (Voterregistration) criteria.uniqueResult();
		session.close();
		return v;
	}

	public boolean searchCandidateEmailPass(String canEmailId, String canPassword) {
		Candidateregistration c = searchCandidateEP(canEmailId, canPassword);
		System.out.println(c);
		if (canEmailId.equals(c.getCanEmailId()) && (canPassword.equals(c.getCanPassword()))) {
			return true;
		} else {
			return false;
		}
	}

	public Candidateregistration searchByCanEmail(String canEmailId) {
		Session session = factory.openSession();
		Criteria criteria = session.createCriteria(Candidateregistration.class);
		criteria.add(Restrictions.eq("canEmailId", canEmailId));
		Candidateregistration c = (Candidateregistration) criteria.uniqueResult();
		session.close();
		return c;
	}

	private Candidateregistration searchCandidateEP(String canEmailId, String canPassword) {

		Session session = factory.openSession();
		Criteria criteria = session.createCriteria(Candidateregistration.class);
		criteria.add(Restrictions.eq("canEmailId", canEmailId));
		// criteria.add(Restrictions.("canPassword", canPassword));
		Candidateregistration c = (Candidateregistration) criteria.uniqueResult();
		session.close();
		return c;
	}

	public boolean searchCandidateStatus(String canEmailId, String canStatus1) {
		Candidateregistration c = searchCandidateStatus1(canEmailId, canStatus1);
		System.out.println(c);
		if (canEmailId.equals(c.getCanEmailId()) && (canStatus1.equals(c.getCanStatus1()))) {
			System.out.print("searchCandidateStatus true");
			System.out.println(canStatus1);
			System.out.println(c.getCanStatus1());
			return true;
		} else {
			System.out.print("searchCandidateStatus false");
			System.out.println(canStatus1);
			System.out.println(c.getCanStatus1());
			return false;
		}
	}

	private Candidateregistration searchCandidateStatus1(String canEmailId, String canStatus1) {
		Session session = factory.openSession();
		Criteria criteria = session.createCriteria(Candidateregistration.class);
		criteria.add(Restrictions.eq("canEmailId", canEmailId));
		System.out.println(canStatus1);
		criteria.add(Restrictions.eq("canStatus1", canStatus1));
		Candidateregistration c = (Candidateregistration) criteria.uniqueResult();
		session.close();
		return c;
	}

	public void updateVotersdata(Voterregistration v) {
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		session.update(v);
		transaction.commit();
		session.close();
	}

	public List<Voterregistration> Voterviewdata() {
		Session session = factory.openSession();
		Criteria criteria = session.createCriteria(Voterregistration.class);
		List<Voterregistration> v = criteria.list();
		session.close();
		return v;
	}

	public Voterregistration Votersrecby(int vid1) {
		Session session = factory.openSession();
		Criteria criteria = session.createCriteria(Voterregistration.class);
		criteria.add(Restrictions.eq("vid", vid1));
		Voterregistration v = (Voterregistration) criteria.uniqueResult();
		session.close();
		return v;
	}

	public Voterregistration searchByEmail(String vemailId) {
		Session session = factory.openSession();
		Criteria criteria = session.createCriteria(Voterregistration.class);
		criteria.add(Restrictions.eq("vemailId", vemailId));
		Voterregistration v = (Voterregistration) criteria.uniqueResult();
		session.close();
		return v;
	}

	public boolean searchVotingDetails(String vfirstname, String vlastname, String vadharno, String vpanno,
			String vsecurityQues, String vsecurityAnswer, String vpassword, String vepicNo) {
		Voterregistration v = searchVotingdetais2(vfirstname, vlastname, vadharno, vpanno, vsecurityQues,
				vsecurityAnswer, vpassword, vepicNo);

		System.out.println(v);

		if (vfirstname.equals(v.getVfirstname())
				&& (vlastname.equals(v.getVlastname()) && (vadharno.equals(v.getVadharno()) && (vpanno.equals(v
						.getVpanno()) && (vsecurityQues.equals(v.getVsecurityQues()) && (vsecurityAnswer.equals(v
						.getVsecurityAnswer()) && (vpassword.equals(v.getVpassword()) && (vepicNo
						.equals(v.getVepicNo()))))))))) {
			return true;
		} else {
			return false;
		}

	}

	private Voterregistration searchVotingdetais2(String vfirstname, String vlastname, String vadharno, String vpanno,
			String vsecurityQues, String vsecurityAnswer, String vpassword, String vepicNo) {
		Session session = factory.openSession();
		Criteria criteria = session.createCriteria(Voterregistration.class);
		criteria.add(Restrictions.eq("vfirstname", vfirstname));

		criteria.add(Restrictions.eq("vlastname", vlastname));
		criteria.add(Restrictions.eq("vadharno", vadharno));

		criteria.add(Restrictions.eq("vpanno", vpanno));
		criteria.add(Restrictions.eq("vsecurityQues", vsecurityQues));
		criteria.add(Restrictions.eq("vsecurityAnswer", vsecurityAnswer));
		criteria.add(Restrictions.eq("vpassword", vpassword));
		Voterregistration v = (Voterregistration) criteria.uniqueResult();
		session.close();
		return v;

	}

	public Candidateregistration CandidateSrecby(int canId1) {
		Session session = factory.openSession();
		Criteria criteria = session.createCriteria(Candidateregistration.class);
		criteria.add(Restrictions.eq("canId", canId1));
		Candidateregistration c = (Candidateregistration) criteria.uniqueResult();
		// session.close();
		session.close();
		return c;
	}

	public void UpdateCan(Candidateregistration list) {
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		session.update(list);
		transaction.commit();
		session.close();

	}

	public Candidateregistration CandidateSrecbyToUpdate(int canId1) {
		Session session = factory.openSession();
		Criteria criteria = session.createCriteria(Candidateregistration.class);
		criteria.add(Restrictions.eq("canId", canId1));
		Candidateregistration c = (Candidateregistration) criteria.uniqueResult();
		session.close();
		return c;
	}

	public void saveAdmindata(Admin a) {
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		session.save(a);
		transaction.commit();
		session.close();
		// session.close();

	}

	public boolean searchAdmineEmailPass(String adminEmailId, String adminPassword) {
		Admin a = searchAdminEP(adminEmailId, adminPassword);

		System.out.println(a);

		if (adminEmailId.equals(a.getAdminEmailId()) && (adminPassword.equals(a.getAdminPassword()))) {
			return true;
		} else {
			return false;
		}
	}

	private Admin searchAdminEP(String adminEmailId, String adminPassword) {
		Session session = factory.openSession();
		Criteria criteria = session.createCriteria(Admin.class);
		criteria.add(Restrictions.eq("adminEmailId", adminEmailId));
		// criteria.add(Restrictions.eq("adminPassword",adminPassword));
		Admin a = (Admin) criteria.uniqueResult();
		session.close();
		return a;
	}

	public Admin searchByAdminEmail(String adminEmailId) {
		Session session = factory.openSession();
		Criteria criteria = session.createCriteria(Admin.class);
		criteria.add(Restrictions.eq("adminEmailId", adminEmailId));
		Admin a = (Admin) criteria.uniqueResult();
		session.close();
		return a;
	}

	public List<Admin> viewAdmindata() {
		Session session = factory.openSession();
		Criteria criteria = session.createCriteria(Admin.class);
		List<Admin> a = criteria.list();
		session.close();
		return a;
	}

	public Admin srecAdminby(int adminId1) {
		Session session = factory.openSession();
		Criteria criteria = session.createCriteria(Admin.class);
		criteria.add(Restrictions.eq("adminId", adminId1));
		Admin a = (Admin) criteria.uniqueResult();
		session.close();
		return a;
	}

	public void updateAdmindata(Admin a) {
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		session.update(a);
		transaction.commit();
		session.close();
		// session.close();

	}

	public List<Candidateregistration> Candidateviewdata() {
		Session session = factory.openSession();
		Criteria criteria = session.createCriteria(Candidateregistration.class);
		List<Candidateregistration> c = criteria.list();
		session.close();
		return c;
		// session.close();
	}

	public void insertimage(Admin a) {
		Session s = factory.openSession();
		Transaction t = s.beginTransaction();
		s.save(a);
		t.commit();
		s.close();

	}

	public void insertVotersimage(Voterregistration v) {
		Session s = factory.openSession();
		Transaction t = s.beginTransaction();
		s.save(v);
		t.commit();
		s.close();
	}

	/*
	 * public void insertCanimage(Candidateregistration c) { Session s =
	 * factory.openSession(); Transaction t = s.beginTransaction(); s.save(c);
	 * t.commit(); s.close(); }
	 */
	public void insertpartyimage(Party party) {
		Session s = factory.openSession();
		Transaction t = s.beginTransaction();
		s.save(party);
		t.commit();
		s.close();

	}

	public List<Party> Partyviewdata() {
		Session session = factory.openSession();
		Criteria criteria = session.createCriteria(Party.class);
		List<Party> party = criteria.list();
		session.close();
		return party;
	}

	public void Updateparty(Party party) {
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		session.update(party);
		transaction.commit();
		session.close();
	}

	public void UpdateCandidatesdata(Candidateregistration list) {
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		session.update(list);
		transaction.commit();
		session.close();
		// session.close();

	}

	public void insertCandimage(Candidateregistration c) {
		Session s = factory.openSession();
		Transaction t = s.beginTransaction();
		s.save(c);
		t.commit();
		s.close();

	}

	public void deleteVoter(Voterregistration v) {
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		session.delete(v);
		transaction.commit();
		session.close();

	}

	public void deleteCandidate(Candidateregistration c) {
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		session.delete(c);
		transaction.commit();
		session.close();

	}

	public void deleteAdmin(Admin a) {
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		session.delete(a);
		transaction.commit();
		session.close();

	}

	public Party PartySrecby(int partyId1) {
		Session session = factory.openSession();
		Criteria criteria = session.createCriteria(Party.class);
		criteria.add(Restrictions.eq("partyId", partyId1));
		Party p = (Party) criteria.uniqueResult();
		session.close();
		return p;
	}

	public void deleteParty(Party p) {
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		session.delete(p);
		transaction.commit();
		session.close();

	}

	/*
	 * public void savecastdata(Castvote cast) { Session session =
	 * factory.openSession(); Transaction transaction =
	 * session.beginTransaction();
	 * System.out.println("hhhhhhhhhhhhhhhhhhhhhhhh"); session.save(cast);
	 * transaction.commit(); session.close();
	 * 
	 * }
	 */

	public void savecastingdata(Castvote cast) {
		Session session2 = factory.openSession();
		Transaction transaction = session2.beginTransaction();
		session2.update(cast);
		transaction.commit();
		session2.close();

	}

	public java.util.List<Party> searchlist() {
		Session s1 = factory.openSession();
		Criteria criteria = s1.createCriteria(Party.class);

		java.util.List<Party> l = criteria.list();
		s1.close();
		return l;
	}
	
	/*
	 * public java.util.List<Candidateregistration> searchlist1() { Session s1 =
	 * factory.openSession(); Criteria criteria =
	 * s1.createCriteria(Candidateregistration.class);
	 * 
	 * java.util.List<Candidateregistration> list = criteria.list();
	 * 
	 * return list; }
	 */

	public boolean searchEmailIdInVoter(String email, String secretQuestion, String secretAnswer) {
		Voterregistration v = search2EmailIdInVoter(email, secretQuestion, secretAnswer);

		System.out.println(v);

		if (email.equals(v.getVemailId())
				&& (secretQuestion.equals(v.getVsecurityQues()) && (secretAnswer.equals(v.getVsecurityAnswer())))) {
			System.out.println(email);
			System.out.println(v.getVemailId());
			return true;
		} else {
			return false;
		}
	}

	private Voterregistration search2EmailIdInVoter(String email, String secretQuestion, String secretAnswer) {
		Session session = factory.openSession();
		Criteria criteria = session.createCriteria(Voterregistration.class);
		criteria.add(Restrictions.eq("vemailId", email));
		criteria.add(Restrictions.eq("vsecurityQues", secretQuestion));
		criteria.add(Restrictions.eq("vsecurityAnswer", secretAnswer));
		Voterregistration v = (Voterregistration) criteria.uniqueResult();
		session.close();
		return v;
	}

	public boolean searchEmailIdInCandidate(String email, String secretQuestion, String secretAnswer) {
		Candidateregistration c = search2EmailIdInCandidate(email, secretQuestion, secretAnswer);

		System.out.println(c);

		if (email.equals(c.getCanEmailId())
				&& (secretQuestion.equals(c.getCanSecurityQues()) && (secretAnswer.equals(c.getCanSecurityAnswer())))) {
			return true;
		} else {
			return false;
		}
	}

	private Candidateregistration search2EmailIdInCandidate(String email, String secretQuestion, String secretAnswer) {
		Session session = factory.openSession();
		Criteria criteria = session.createCriteria(Candidateregistration.class);
		criteria.add(Restrictions.eq("canEmailId", email));
		criteria.add(Restrictions.eq("canSecurityQues", secretQuestion));
		criteria.add(Restrictions.eq("canSecurityAnswer", secretAnswer));
		Candidateregistration c = (Candidateregistration) criteria.uniqueResult();
		session.close();
		return c;
	}

	public boolean searchEmailIdInAdmin(String email, String secretQuestion, String secretAnswer) {
		Admin a = search2EmailIdInAdmin(email, secretQuestion, secretAnswer);

		System.out.println(a);

		if (email.equals(a.getAdminEmailId())
				&& (secretQuestion.equals(a.getAdminSecurityQues()) && (secretAnswer.equals(a.getAdminSecurityAnswer())))) {
			return true;
		} else {
			return false;
		}
	}

	private Admin search2EmailIdInAdmin(String email, String secretQuestion, String secretAnswer) {
		Session session = factory.openSession();
		Criteria criteria = session.createCriteria(Admin.class);
		criteria.add(Restrictions.eq("adminEmailId", email));
		criteria.add(Restrictions.eq("adminSecurityQues", secretQuestion));
		criteria.add(Restrictions.eq("adminSecurityAnswer", secretAnswer));
		Admin a = (Admin) criteria.uniqueResult();
		session.close();
		return a;
	}

	public void savecastdata(Castvote c) {

		Session session1 = factory.openSession();
		Transaction transaction = session1.beginTransaction();
		session1.save(c);
		transaction.commit();
		session1.close();
	}

	public Voterregistration searchDataByEmail(String email) {
		Session session = factory.openSession();
		Criteria criteria = session.createCriteria(Voterregistration.class);
		criteria.add(Restrictions.eq("vemailId", email));
		Voterregistration v = (Voterregistration) criteria.uniqueResult();
		session.close();
		return v;
	}

	public Castvote searchbycastvoteId(int castId1) {
		Session session = factory.openSession();
		Criteria criteria = session.createCriteria(Castvote.class);
		criteria.add(Restrictions.eq("castId", castId1));
		//criteria.add(Restrictions.eq("", ));
		System.out.println("idddddddddddddddddd===" + castId1);
		Castvote v = (Castvote) criteria.uniqueResult();
		session.close();
		return v;
	}

	public Castvote searchcastId(String castEpicNo) {
		Session session = factory.openSession();
		Criteria criteria = session.createCriteria(Castvote.class);
		criteria.add(Restrictions.eq("castEpicNo", castEpicNo));
		Castvote p = (Castvote) criteria.uniqueResult();
		session.close();
		return p;
	}

	public Party srecbyparty(String partyName) {
		Session session=factory.openSession();
		Criteria criteria=session.createCriteria(Party.class);
		criteria.add(Restrictions.eq("partyName",partyName));
		Party de=(Party)criteria.uniqueResult();
		return de;
	}

	

	
	
	

}
