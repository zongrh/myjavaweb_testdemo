JSTL 编辑 讨论
JSTL（JavaServer Pages Standard Tag Library，JSP标准标签库)是一个不断完善的开放源代码的JSP标签库，
是由apache的jakarta小组来维护的。JSTL只能运行在支持JSP1.2和Servlet2.3规范的容器上，如tomcat 4.x。
在JSP 2.0中也是作为标准支持的。
JSTL 1.0 发布于 2002 年 6 月，由四个定制标记库（core、format、xml 和 sql）和一对通用标记库验证器
（ScriptFreeTLV 和 PermittedTaglibsTLV）组成。core 标记库提供了定制操作，通过限制了作用域的变量管理数据，
以及执行页面内容的迭代和条件操作。它还提供了用来生成和操作 URL 的标记。顾名思义，format 标记库定义了用来格式化数据（
尤其是数字和日期）的操作。它还支持使用本地化资源束进行 JSP 页面的国际化。xml 库包含一些标记，
这些标记用来操作通过 XML 表示的数据，而 sql 库定义了用来查询关系数据库的操作。
如果要使用JSTL，则必须将jstl.jar和 standard.jar文件放到classpath中，如果你还需要使用XML
 processing及Database access (SQL)标签，还要将相关JAR文件放到classpath中，这些JAR文件全部存在于下载回来的zip文件中。