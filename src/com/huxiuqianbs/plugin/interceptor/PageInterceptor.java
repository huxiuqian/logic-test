package com.huxiuqianbs.plugin.interceptor;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import org.apache.ibatis.executor.Executor;
import org.apache.ibatis.mapping.BoundSql;
import org.apache.ibatis.mapping.MappedStatement;
import org.apache.ibatis.mapping.MappedStatement.Builder;
import org.apache.ibatis.mapping.ParameterMapping;
import org.apache.ibatis.mapping.SqlSource;
import org.apache.ibatis.plugin.Interceptor;
import org.apache.ibatis.plugin.Intercepts;
import org.apache.ibatis.plugin.Invocation;
import org.apache.ibatis.plugin.Plugin;
import org.apache.ibatis.plugin.Signature;
import org.apache.ibatis.scripting.defaults.DefaultParameterHandler;
import org.apache.ibatis.session.ResultHandler;
import org.apache.ibatis.session.RowBounds;

@Intercepts(value = { @Signature(args = { MappedStatement.class, Object.class, RowBounds.class, ResultHandler.class  }, method = "query", type = Executor.class) })
public class PageInterceptor implements Interceptor{

	@Override
	public Object intercept(Invocation invocation) throws Throwable {
		
//		System.out.println("进入MyBatis拦截器");
		// 获取方法参数类型
		Object params = invocation.getArgs()[1];
		
		// 获取Page对象
		Page page = getPage(params);
		
		// 参数中无分页信息
		if (page == null){
			return invocation.proceed();
		}
		
		// 获取SQL语句
		MappedStatement mappedStatement=(MappedStatement)invocation.getArgs()[0];
	    Object parameter = invocation.getArgs()[1];
		BoundSql boundSql = mappedStatement.getBoundSql(parameter);
	    String originalSql = boundSql.getSql().trim();
		
		// 获取总页数
		int rowCount = 0;
		rowCount = getRowCount(mappedStatement, boundSql, originalSql);
		
		page.setRows(rowCount);
		
		// 拼接 limit 获取当前页内容
		String pageSql = originalSql + " limit " + (page.getCurPage() - 1 ) * page.getPageNumber() + ", "+page.getPageNumber()+" "; 
		BoundSql pageBS = copyFromBoundSql(mappedStatement, boundSql, pageSql);  
		MappedStatement newMs = copyFromMappedStatement(mappedStatement,new BoundSqlSqlSource(pageBS));
		invocation.getArgs()[0] = newMs;
	
		Object result = invocation.proceed();
		
		if (result instanceof List){
			page.setData((List)result);
		}
		
		return result;
	}

	private int getRowCount(MappedStatement mappedStatement, BoundSql boundSql, String originalSql) throws Throwable {
		int rowCount = 0;
		
		// 获取连接对象
		Connection conn = mappedStatement.getConfiguration().getEnvironment().getDataSource().getConnection();
		
		String sql = "select count(*) from (" + originalSql + ") forpage";
		PreparedStatement stmt = conn.prepareStatement(sql);
		
		// 绑定参数
		BoundSql countBS = copyFromBoundSql(mappedStatement, boundSql, sql);  
	    DefaultParameterHandler parameterHandler = new DefaultParameterHandler(mappedStatement, boundSql.getParameterObject(), countBS);  
	    parameterHandler.setParameters(stmt);  
		
		ResultSet rs = stmt.executeQuery();
		
		if (rs.next()){
			rowCount = rs.getInt(1);
		}
		
		rs.close();
		stmt.close();
		conn.close();
		
		return rowCount;
	}

	/**
	 * 复制BoundSql对象
	 */
	private BoundSql copyFromBoundSql(MappedStatement ms, BoundSql boundSql, String sql) {
		BoundSql newBoundSql = new BoundSql(ms.getConfiguration(), sql, boundSql.getParameterMappings(),
				boundSql.getParameterObject());
		for (ParameterMapping mapping : boundSql.getParameterMappings()) {
			String prop = mapping.getProperty();
			if (boundSql.hasAdditionalParameter(prop)) {
				newBoundSql.setAdditionalParameter(prop, boundSql.getAdditionalParameter(prop));
			}
		}
		return newBoundSql;
	}
	 /** 
	   * 复制MappedStatement对象 
	   */  
	  private MappedStatement copyFromMappedStatement(MappedStatement ms,SqlSource newSqlSource) {  
	    Builder builder = new Builder(ms.getConfiguration(),ms.getId(),newSqlSource,ms.getSqlCommandType());  
	    
	    builder.resource(ms.getResource());  
	    builder.fetchSize(ms.getFetchSize());  
	    builder.statementType(ms.getStatementType());  
	    builder.keyGenerator(ms.getKeyGenerator());
	    
	    String[] properties = ms.getKeyProperties();
	    
	    if (properties != null){
	    	String props = "";
	    	
	    	for (String str : properties) {
	    		props += str + ",";
			}
	    }
	    else {
	    	builder.keyProperty(null);
	    }
	    
	    builder.timeout(ms.getTimeout());  
	    builder.parameterMap(ms.getParameterMap());  
	    builder.resultMaps(ms.getResultMaps());  
	    builder.resultSetType(ms.getResultSetType());  
	    builder.cache(ms.getCache());  
	    builder.flushCacheRequired(ms.isFlushCacheRequired());  
	    builder.useCache(ms.isUseCache());  
	      
	    return builder.build();  
	  }  
	/**
	 * 
	 * @Description:从参数中获取分页对象
	 * @param params
	 * @return
	 * Page
	 * @exception:
	 * @author: Zheng Yanbo
	 * @time:2017年10月19日 下午2:23:11
	 */
	private Page getPage(Object params) {

		if (params instanceof Page){
			return (Page) params;
		}
		else if (params instanceof Map){
			
			Map paramMap = (Map) params;
			for (Object param : paramMap.values()) {
				if (param instanceof Page){
					return (Page) param;
				}
			}
		}
		return null;
	}

	@Override
	public Object plugin(Object target) {
		return Plugin.wrap(target, this);
	}

	@Override
	public void setProperties(Properties properties) {
	}

	public class BoundSqlSqlSource implements SqlSource {
		BoundSql boundSql;

		public BoundSqlSqlSource(BoundSql boundSql) {
			this.boundSql = boundSql;
		}

		public BoundSql getBoundSql(Object parameterObject) {
			return boundSql;
		}
	} 
}
