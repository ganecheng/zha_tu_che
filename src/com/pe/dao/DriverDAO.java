package com.pe.dao;

import com.pe.common.IResult;
import com.pe.pojo.Driver;
import com.pe.pojo.ListRecord;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.LockOptions;
import org.hibernate.Query;
import org.hibernate.Transaction;
import org.hibernate.criterion.Example;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * A data access object (DAO) providing persistence and search support for
 * Driver entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see com.pe.pojo.Driver
 * @author MyEclipse Persistence Tools
 */
public class DriverDAO extends BaseHibernateDAO
{
	private static final Logger log = LoggerFactory.getLogger(DriverDAO.class);
	// property constants
	public static final String NAME = "name";
	public static final String AGE = "age";
	public static final String SEX = "sex";
	public static final String COMPANY = "company";
	public static final String VEHICLE = "vehicle";

	public Driver save(Driver transientInstance)
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

	public List<Driver> saveList(List<Driver> list)
	{
		Transaction tx = null;
		try
		{
			tx = getSession().beginTransaction();
			for (Driver listRecord : list)
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

	public int delete(Driver persistentInstance)
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

	public Driver findById(java.lang.String id)
	{
		log.debug("getting Driver instance with id: " + id);
		try
		{
			Driver instance = (Driver) getSession().get("com.pe.pojo.Driver", id);
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
		log.debug("finding Driver instance with property: " + propertyName + ", value: " + value);
		try
		{
			String queryString = "from Driver as model where model." + propertyName + "= ?";
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

	public List findByName(Object name)
	{
		return findByProperty(NAME, name);
	}

	public List findByAge(Object age)
	{
		return findByProperty(AGE, age);
	}

	public List findBySex(Object sex)
	{
		return findByProperty(SEX, sex);
	}

	public List findByCompany(Object company)
	{
		return findByProperty(COMPANY, company);
	}

	public List findByVehicle(Object vehicle)
	{
		return findByProperty(VEHICLE, vehicle);
	}

	public List findAll()
	{
		log.debug("finding all Driver instances");
		try
		{
			String queryString = "from Driver";
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
			String sql = "from Driver order by id desc";
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
			String sql = "select count(*) from Driver";
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