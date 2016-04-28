package com.pe.dao;

import com.pe.common.IResult;
import com.pe.pojo.Trunk;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Transaction;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * A data access object (DAO) providing persistence and search support for Trunk
 * entities. Transaction control of the save(), update() and delete() operations
 * can directly support Spring container-managed transactions or they can be
 * augmented to handle user-managed Spring transactions. Each of these methods
 * provides additional information for how to configure it for the desired type
 * of transaction control.
 * 
 * @see com.pe.pojo.Trunk
 * @author MyEclipse Persistence Tools
 */
public class TrunkDAO extends BaseHibernateDAO
{
	private static final Logger log = LoggerFactory.getLogger(TrunkDAO.class);
	// property constants
	public static final String VEHICLE = "vehicle";
	public static final String BIRTHDAY = "birthday";
	public static final String LOAD = "load";
	public static final String INSURANCE = "insurance";
	public static final String STATUS = "status";
	public static final String COMPANY = "company";

	public Trunk save(Trunk transientInstance)
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

	public List<Trunk> saveList(List<Trunk> list)
	{
		Transaction tx = null;
		try
		{
			tx = getSession().beginTransaction();
			for (Trunk listRecord : list)
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

	public int delete(Trunk persistentInstance)
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

	public Trunk findById(java.lang.String id)
	{
		log.debug("getting Trunk instance with id: " + id);
		try
		{
			Trunk instance = (Trunk) getSession().get("com.pe.pojo.Trunk", id);
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
		log.debug("finding Trunk instance with property: " + propertyName + ", value: " + value);
		try
		{
			String queryString = "from Trunk as model where model." + propertyName + "= ?";
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

	public List findByVehicle(Object vehicle)
	{
		return findByProperty(VEHICLE, vehicle);
	}

	public List findByBirthday(Object birthday)
	{
		return findByProperty(BIRTHDAY, birthday);
	}

	public List findByLoad(Object load)
	{
		return findByProperty(LOAD, load);
	}

	public List findByInsurance(Object insurance)
	{
		return findByProperty(INSURANCE, insurance);
	}

	public List findByStatus(Object status)
	{
		return findByProperty(STATUS, status);
	}

	public List findByCompany(Object company)
	{
		return findByProperty(COMPANY, company);
	}

	public List findAll()
	{
		log.debug("finding all Trunk instances");
		try
		{
			String queryString = "from Trunk";
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

	public List getList(int index, int pageSize)
	{
		try
		{
			String sql = "from Trunk order by id asc";
			Query query = getSession().createQuery(sql);
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

	public int getTotalCount()
	{
		try
		{
			String sql = "select count(*) from Trunk";
			Query query = getSession().createQuery(sql);
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