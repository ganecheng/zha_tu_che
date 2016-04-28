package com.pe.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.LockOptions;
import org.hibernate.Query;
import org.hibernate.Transaction;
import org.hibernate.criterion.Example;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.pe.pojo.ListRecord;
import com.pe.common.IResult;

/**
 * A data access object (DAO) providing persistence and search support for
 * ListRecord entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see com.pe.pojo.ListRecord
 * @author MyEclipse Persistence Tools
 */
public class ListRecordDAO extends BaseHibernateDAO
{
	private static final Logger log = LoggerFactory.getLogger(ListRecordDAO.class);
	// property constants
	public static final String SCHOOL_NAME = "schoolName";
	public static final String MAJOR_NAME = "majorName";
	public static final String CLASS_NAME = "className";
	public static final String STUDENT_NAME = "studentName";
	public static final String SEX = "sex";
	public static final String TI_ZHI = "tiZhi";
	public static final String XING_TAI = "xingTai";
	public static final String CE_SHI = "ceShi";

	public ListRecord save(ListRecord transientInstance)
	{
		Transaction tx = null;
		try
		{
			tx = getSession().beginTransaction();
			getSession().saveOrUpdate(transientInstance);
			tx.commit();
		}
		catch (HibernateException e)
		{
			e.printStackTrace();
			if (tx != null)
			{
				tx.rollback();
			}
			return null;
		}
		finally
		{
			if (getSession() != null && getSession().isOpen() == true)
			{
				getSession().close();
			}
		}
		return transientInstance;
	}
	public List<ListRecord> saveList(List<ListRecord> list)
	{
		Transaction tx = null;
		try
		{
			tx = getSession().beginTransaction();
			for (ListRecord listRecord : list)
			{
				getSession().saveOrUpdate(listRecord); 
			}
			tx.commit();
		}
		catch (HibernateException e)
		{
			e.printStackTrace();
			if (tx != null)
			{
				tx.rollback();
			}
			return null;
		}
		finally
		{
			if (getSession() != null && getSession().isOpen() == true)
			{
				getSession().close();
			}
		}
		return list;
	}

	public int delete(ListRecord persistentInstance)
	{
		Transaction tx = null;
		try
		{
			tx = getSession().beginTransaction();
			getSession().delete(persistentInstance);
			tx.commit();
		}
		catch (HibernateException e)
		{
			e.printStackTrace();
			if (tx != null)
			{
				tx.rollback();
			}
			return IResult.DELETE_EXCEPTION;
		}
		finally
		{
			if (getSession() != null && getSession().isOpen() == true)
			{
				getSession().close();
			}
		}
		return IResult.DELETE_SUCCESS;
	}

	public ListRecord findById(java.lang.String id)
	{
		log.debug("getting ListRecord instance with id: " + id);
		try
		{
			ListRecord instance = (ListRecord) getSession().get("com.pe.pojo.ListRecord", id);
			return instance;
		}
		catch (HibernateException e)
		{
			e.printStackTrace();
			return null;
		}
		finally
		{
			if (getSession() != null && getSession().isOpen() == true)
			{
				getSession().close();
			}
		}
	}

	public List findByProperty(String propertyName, Object value)
	{
		log.debug("finding ListRecord instance with property: " + propertyName + ", value: " + value);
		try
		{
			String queryString = "from ListRecord as model where model." + propertyName + "= ?";
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		}
		catch (HibernateException e)
		{
			e.printStackTrace();
			return null;
		}
		finally
		{
			if (getSession() != null && getSession().isOpen() == true)
			{
				getSession().close();
			}
		}
	}

	public List findBySchoolName(Object schoolName)
	{
		return findByProperty(SCHOOL_NAME, schoolName);
	}

	public List findByMajorName(Object majorName)
	{
		return findByProperty(MAJOR_NAME, majorName);
	}

	public List findByClassName(Object className)
	{
		return findByProperty(CLASS_NAME, className);
	}

	public List findByStudentName(Object studentName)
	{
		return findByProperty(STUDENT_NAME, studentName);
	}

	public List findBySex(Object sex)
	{
		return findByProperty(SEX, sex);
	}

	public List findByTiZhi(Object tiZhi)
	{
		return findByProperty(TI_ZHI, tiZhi);
	}

	public List findByXingTai(Object xingTai)
	{
		return findByProperty(XING_TAI, xingTai);
	}

	public List findByCeShi(Object ceShi)
	{
		return findByProperty(CE_SHI, ceShi);
	}

	public List findAll()
	{
		log.debug("finding all ListRecord instances");
		try
		{
			String queryString = "from ListRecord";
			Query queryObject = getSession().createQuery(queryString);
			return queryObject.list();
		}
		catch (HibernateException e)
		{
			e.printStackTrace();
			return null;
		}
		finally
		{
			if (getSession() != null && getSession().isOpen() == true)
			{
				getSession().close();
			}
		}
	}

	public List getListBySchoolNameAndIndexAndPageSizeAndOrderBy(String schoolName, int index, int pageSize, String orderByStr)
	{
		try
		{
			String sql = "from ListRecord r where r.schoolName=:schoolName order by :orderByStr asc";
			sql = sql.replaceAll(":orderByStr", orderByStr);
			Query query = getSession().createQuery(sql);
			query.setParameter("schoolName", schoolName);
			query.setFirstResult((index - 1) * pageSize);
			query.setMaxResults(pageSize);
			List tempList = query.list();
			if (tempList == null)
			{
				return null;
			}
			else
			{
				if (tempList.size() > 0)
				{
					return tempList;
				}
				else
				{
					return null;
				}
			}
		}
		catch (HibernateException e)
		{
			e.printStackTrace();
			return null;
		}
		finally
		{
			if (getSession() != null && getSession().isOpen() == true)
			{
				getSession().close();
			}
		}
	}

	public int getTotalCountBySchoolNameAndOrderBy(String schoolName, String orderByStr)
	{
		try
		{
			String sql = "select count(*) from ListRecord r where r.schoolName=:schoolName order by :orderByStr asc";
			sql = sql.replaceAll(":orderByStr", orderByStr);
			Query query = getSession().createQuery(sql);
			query.setParameter("schoolName", schoolName);
			int num = ((Number) query.iterate().next()).intValue();
			return num;
		}
		catch (HibernateException e)
		{
			e.printStackTrace();
			return -1;
		}
		finally
		{
			if (getSession() != null && getSession().isOpen() == true)
			{
				getSession().close();
			}
		}
	}
}