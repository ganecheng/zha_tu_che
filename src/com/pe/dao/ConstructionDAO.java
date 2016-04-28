package com.pe.dao;

import com.pe.common.IResult;
import com.pe.dao.BaseHibernateDAO;
import com.pe.pojo.Construction;
import com.pe.pojo.Trunk;

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
 * Construction entities. Transaction control of the save(), update() and
 * delete() operations can directly support Spring container-managed
 * transactions or they can be augmented to handle user-managed Spring
 * transactions. Each of these methods provides additional information for how
 * to configure it for the desired type of transaction control.
 * 
 * @see com.pe.pojo.Construction
 * @author MyEclipse Persistence Tools
 */
public class ConstructionDAO extends BaseHibernateDAO
{
	private static final Logger log = LoggerFactory.getLogger(ConstructionDAO.class);
	// property constants
	public static final String NAME = "name";
	public static final String REGION = "region";
	public static final String TYPE = "type";
	public static final String AREA = "area";
	public static final String PERIOD = "period";
	public static final String INFO = "info";

	public Construction save(Construction transientInstance)
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

	public List<Construction> saveList(List<Construction> list)
	{
		Transaction tx = null;
		try
		{
			tx = getSession().beginTransaction();
			for (Construction listRecord : list)
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

	public int delete(Construction persistentInstance)
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

	public Construction findById(java.lang.String id)
	{
		log.debug("getting Construction instance with id: " + id);
		try
		{
			Construction instance = (Construction) getSession().get("com.pe.pojo.Construction", id);
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
		log.debug("finding Construction instance with property: " + propertyName + ", value: " + value);
		try
		{
			String queryString = "from Construction as model where model." + propertyName + "= ?";
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

	public List findByRegion(Object region)
	{
		return findByProperty(REGION, region);
	}

	public List findByType(Object type)
	{
		return findByProperty(TYPE, type);
	}

	public List findByArea(Object area)
	{
		return findByProperty(AREA, area);
	}

	public List findByPeriod(Object period)
	{
		return findByProperty(PERIOD, period);
	}

	public List findByInfo(Object info)
	{
		return findByProperty(INFO, info);
	}

	public List findAll()
	{
		log.debug("finding all Construction instances");
		try
		{
			String queryString = "from Construction";
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
			String sql = "from Construction order by id desc";
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
			String sql = "select count(*) from Construction";
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