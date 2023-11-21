<%@page contentType="text/html;charset=UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<HTML>
<HEAD>
<TITLE>Result</TITLE>
</HEAD>
<BODY>
<H1>Result</H1>

<jsp:useBean id="sampleControladorPublicadorProxyid" scope="session" class="publicadores.ControladorPublicadorProxy" />
<%
if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
sampleControladorPublicadorProxyid.setEndpoint(request.getParameter("endpoint"));
%>

<%
String method = request.getParameter("method");
int methodID = 0;
if (method == null) methodID = -1;

if(methodID != -1) methodID = Integer.parseInt(method);
boolean gotMethod = false;

try {
switch (methodID){ 
case 2:
        gotMethod = true;
        java.lang.String getEndpoint2mtemp = sampleControladorPublicadorProxyid.getEndpoint();
if(getEndpoint2mtemp == null){
%>
<%=getEndpoint2mtemp %>
<%
}else{
        String tempResultreturnp3 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getEndpoint2mtemp));
        %>
        <%= tempResultreturnp3 %>
        <%
}
break;
case 5:
        gotMethod = true;
        String endpoint_0id=  request.getParameter("endpoint8");
            java.lang.String endpoint_0idTemp = null;
        if(!endpoint_0id.equals("")){
         endpoint_0idTemp  = endpoint_0id;
        }
        sampleControladorPublicadorProxyid.setEndpoint(endpoint_0idTemp);
break;
case 10:
        gotMethod = true;
        publicadores.ControladorPublicador getControladorPublicador10mtemp = sampleControladorPublicadorProxyid.getControladorPublicador();
if(getControladorPublicador10mtemp == null){
%>
<%=getControladorPublicador10mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
</TABLE>
<%
}
break;
case 25:
        gotMethod = true;
        String descripcion_2id=  request.getParameter("descripcion30");
            java.lang.String descripcion_2idTemp = null;
        if(!descripcion_2id.equals("")){
         descripcion_2idTemp  = descripcion_2id;
        }
        String url_3id=  request.getParameter("url32");
            java.lang.String url_3idTemp = null;
        if(!url_3id.equals("")){
         url_3idTemp  = url_3id;
        }
        String nombre_4id=  request.getParameter("nombre34");
            java.lang.String nombre_4idTemp = null;
        if(!nombre_4id.equals("")){
         nombre_4idTemp  = nombre_4id;
        }
        %>
        <jsp:useBean id="publicadores1InstitucionDeportiva_1id" scope="session" class="publicadores.InstitucionDeportiva" />
        <%
        publicadores1InstitucionDeportiva_1id.setDescripcion(descripcion_2idTemp);
        publicadores1InstitucionDeportiva_1id.setUrl(url_3idTemp);
        publicadores1InstitucionDeportiva_1id.setNombre(nombre_4idTemp);
        String arg1_5id=  request.getParameter("arg136");
            java.lang.String arg1_5idTemp = null;
        if(!arg1_5id.equals("")){
         arg1_5idTemp  = arg1_5id;
        }
        String arg2_6id=  request.getParameter("arg238");
            java.lang.String arg2_6idTemp = null;
        if(!arg2_6id.equals("")){
         arg2_6idTemp  = arg2_6id;
        }
        String arg3_7id=  request.getParameter("arg340");
        int arg3_7idTemp  = Integer.parseInt(arg3_7id);
        String arg4_8id=  request.getParameter("arg442");
        double arg4_8idTemp  = Double.parseDouble(arg4_8id);
        String arg5_9id=  request.getParameter("arg544");
            java.util.Calendar arg5_9idTemp = null;
        if(!arg5_9id.equals("")){
        java.text.DateFormat dateFormatarg544 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTemparg544  = dateFormatarg544.parse(arg5_9id);
         arg5_9idTemp = new java.util.GregorianCalendar();
        arg5_9idTemp.setTime(dateTemparg544);
        }
        sampleControladorPublicadorProxyid.altaActividadDeportiva(publicadores1InstitucionDeportiva_1id,arg1_5idTemp,arg2_6idTemp,arg3_7idTemp,arg4_8idTemp,arg5_9idTemp);
break;
case 46:
        gotMethod = true;
        String arg0_10id=  request.getParameter("arg067");
            java.lang.String arg0_10idTemp = null;
        if(!arg0_10id.equals("")){
         arg0_10idTemp  = arg0_10id;
        }
        publicadores.ActividadDeportiva buscarActividadDeportiva46mtemp = sampleControladorPublicadorProxyid.buscarActividadDeportiva(arg0_10idTemp);
if(buscarActividadDeportiva46mtemp == null){
%>
<%=buscarActividadDeportiva46mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fechaRegistro:</TD>
<TD>
<%
if(buscarActividadDeportiva46mtemp != null){
java.util.Calendar typefechaRegistro49 = buscarActividadDeportiva46mtemp.getFechaRegistro();
        java.text.DateFormat dateFormatfechaRegistro49 = java.text.DateFormat.getDateInstance();
        java.util.Date datefechaRegistro49 = typefechaRegistro49.getTime();
        String tempResultfechaRegistro49 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfechaRegistro49.format(datefechaRegistro49));
        %>
        <%= tempResultfechaRegistro49 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">institucion:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">descripcion:</TD>
<TD>
<%
if(buscarActividadDeportiva46mtemp != null){
publicadores.InstitucionDeportiva tebece0=buscarActividadDeportiva46mtemp.getInstitucion();
if(tebece0 != null){
java.lang.String typedescripcion53 = tebece0.getDescripcion();
        String tempResultdescripcion53 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcion53));
        %>
        <%= tempResultdescripcion53 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">url:</TD>
<TD>
<%
if(buscarActividadDeportiva46mtemp != null){
publicadores.InstitucionDeportiva tebece0=buscarActividadDeportiva46mtemp.getInstitucion();
if(tebece0 != null){
java.lang.String typeurl55 = tebece0.getUrl();
        String tempResulturl55 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeurl55));
        %>
        <%= tempResulturl55 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(buscarActividadDeportiva46mtemp != null){
publicadores.InstitucionDeportiva tebece0=buscarActividadDeportiva46mtemp.getInstitucion();
if(tebece0 != null){
java.lang.String typenombre57 = tebece0.getNombre();
        String tempResultnombre57 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre57));
        %>
        <%= tempResultnombre57 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">descripcion:</TD>
<TD>
<%
if(buscarActividadDeportiva46mtemp != null){
java.lang.String typedescripcion59 = buscarActividadDeportiva46mtemp.getDescripcion();
        String tempResultdescripcion59 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcion59));
        %>
        <%= tempResultdescripcion59 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">duracionMinutos:</TD>
<TD>
<%
if(buscarActividadDeportiva46mtemp != null){
%>
<%=buscarActividadDeportiva46mtemp.getDuracionMinutos()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(buscarActividadDeportiva46mtemp != null){
java.lang.String typenombre63 = buscarActividadDeportiva46mtemp.getNombre();
        String tempResultnombre63 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre63));
        %>
        <%= tempResultnombre63 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">costo:</TD>
<TD>
<%
if(buscarActividadDeportiva46mtemp != null){
%>
<%=buscarActividadDeportiva46mtemp.getCosto()
%><%}%>
</TD>
</TABLE>
<%
}
break;
case 69:
        gotMethod = true;
        String arg0_11id=  request.getParameter("arg072");
            java.lang.String arg0_11idTemp = null;
        if(!arg0_11id.equals("")){
         arg0_11idTemp  = arg0_11id;
        }
        publicadores.ActividadDeportiva[] obtenerActividadDeInstitucion69mtemp = sampleControladorPublicadorProxyid.obtenerActividadDeInstitucion(arg0_11idTemp);
if(obtenerActividadDeInstitucion69mtemp == null){
%>
<%=obtenerActividadDeInstitucion69mtemp %>
<%
}else{
        String tempreturnp70 = null;
        if(obtenerActividadDeInstitucion69mtemp != null){
        java.util.List listreturnp70= java.util.Arrays.asList(obtenerActividadDeInstitucion69mtemp);
        tempreturnp70 = listreturnp70.toString();
        }
        %>
        <%=tempreturnp70%>
        <%
}
break;
case 74:
        gotMethod = true;
        String arg0_12id=  request.getParameter("arg095");
            java.lang.String arg0_12idTemp = null;
        if(!arg0_12id.equals("")){
         arg0_12idTemp  = arg0_12id;
        }
        publicadores.ActividadDeportiva buscarActividad74mtemp = sampleControladorPublicadorProxyid.buscarActividad(arg0_12idTemp);
if(buscarActividad74mtemp == null){
%>
<%=buscarActividad74mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fechaRegistro:</TD>
<TD>
<%
if(buscarActividad74mtemp != null){
java.util.Calendar typefechaRegistro77 = buscarActividad74mtemp.getFechaRegistro();
        java.text.DateFormat dateFormatfechaRegistro77 = java.text.DateFormat.getDateInstance();
        java.util.Date datefechaRegistro77 = typefechaRegistro77.getTime();
        String tempResultfechaRegistro77 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfechaRegistro77.format(datefechaRegistro77));
        %>
        <%= tempResultfechaRegistro77 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">institucion:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">descripcion:</TD>
<TD>
<%
if(buscarActividad74mtemp != null){
publicadores.InstitucionDeportiva tebece0=buscarActividad74mtemp.getInstitucion();
if(tebece0 != null){
java.lang.String typedescripcion81 = tebece0.getDescripcion();
        String tempResultdescripcion81 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcion81));
        %>
        <%= tempResultdescripcion81 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">url:</TD>
<TD>
<%
if(buscarActividad74mtemp != null){
publicadores.InstitucionDeportiva tebece0=buscarActividad74mtemp.getInstitucion();
if(tebece0 != null){
java.lang.String typeurl83 = tebece0.getUrl();
        String tempResulturl83 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeurl83));
        %>
        <%= tempResulturl83 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(buscarActividad74mtemp != null){
publicadores.InstitucionDeportiva tebece0=buscarActividad74mtemp.getInstitucion();
if(tebece0 != null){
java.lang.String typenombre85 = tebece0.getNombre();
        String tempResultnombre85 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre85));
        %>
        <%= tempResultnombre85 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">descripcion:</TD>
<TD>
<%
if(buscarActividad74mtemp != null){
java.lang.String typedescripcion87 = buscarActividad74mtemp.getDescripcion();
        String tempResultdescripcion87 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcion87));
        %>
        <%= tempResultdescripcion87 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">duracionMinutos:</TD>
<TD>
<%
if(buscarActividad74mtemp != null){
%>
<%=buscarActividad74mtemp.getDuracionMinutos()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(buscarActividad74mtemp != null){
java.lang.String typenombre91 = buscarActividad74mtemp.getNombre();
        String tempResultnombre91 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre91));
        %>
        <%= tempResultnombre91 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">costo:</TD>
<TD>
<%
if(buscarActividad74mtemp != null){
%>
<%=buscarActividad74mtemp.getCosto()
%><%}%>
</TD>
</TABLE>
<%
}
break;
case 97:
        gotMethod = true;
        String arg0_13id=  request.getParameter("arg0100");
            java.lang.String arg0_13idTemp = null;
        if(!arg0_13id.equals("")){
         arg0_13idTemp  = arg0_13id;
        }
        String arg1_14id=  request.getParameter("arg1102");
            java.lang.String arg1_14idTemp = null;
        if(!arg1_14id.equals("")){
         arg1_14idTemp  = arg1_14id;
        }
        sampleControladorPublicadorProxyid.modificarDescripcionActividad(arg0_13idTemp,arg1_14idTemp);
break;
case 104:
        gotMethod = true;
        String arg0_15id=  request.getParameter("arg0107");
            java.lang.String arg0_15idTemp = null;
        if(!arg0_15id.equals("")){
         arg0_15idTemp  = arg0_15id;
        }
        String arg1_16id=  request.getParameter("arg1109");
        int arg1_16idTemp  = Integer.parseInt(arg1_16id);
        sampleControladorPublicadorProxyid.modificarDuracionActividad(arg0_15idTemp,arg1_16idTemp);
break;
case 111:
        gotMethod = true;
        String arg0_17id=  request.getParameter("arg0114");
            java.lang.String arg0_17idTemp = null;
        if(!arg0_17id.equals("")){
         arg0_17idTemp  = arg0_17id;
        }
        String arg1_18id=  request.getParameter("arg1116");
        double arg1_18idTemp  = Double.parseDouble(arg1_18id);
        sampleControladorPublicadorProxyid.modificarCostoActividad(arg0_17idTemp,arg1_18idTemp);
break;
case 118:
        gotMethod = true;
        publicadores.DtActividad[] getRankingActividades118mtemp = sampleControladorPublicadorProxyid.getRankingActividades();
if(getRankingActividades118mtemp == null){
%>
<%=getRankingActividades118mtemp %>
<%
}else{
        String tempreturnp119 = null;
        if(getRankingActividades118mtemp != null){
        java.util.List listreturnp119= java.util.Arrays.asList(getRankingActividades118mtemp);
        tempreturnp119 = listreturnp119.toString();
        }
        %>
        <%=tempreturnp119%>
        <%
}
break;
case 121:
        gotMethod = true;
        publicadores.DtActividad[] getActividadesDt121mtemp = sampleControladorPublicadorProxyid.getActividadesDt();
if(getActividadesDt121mtemp == null){
%>
<%=getActividadesDt121mtemp %>
<%
}else{
        String tempreturnp122 = null;
        if(getActividadesDt121mtemp != null){
        java.util.List listreturnp122= java.util.Arrays.asList(getActividadesDt121mtemp);
        tempreturnp122 = listreturnp122.toString();
        }
        %>
        <%=tempreturnp122%>
        <%
}
break;
case 124:
        gotMethod = true;
        String arg0_19id=  request.getParameter("arg0127");
            java.lang.String arg0_19idTemp = null;
        if(!arg0_19id.equals("")){
         arg0_19idTemp  = arg0_19id;
        }
        String arg1_20id=  request.getParameter("arg1129");
            java.lang.String arg1_20idTemp = null;
        if(!arg1_20id.equals("")){
         arg1_20idTemp  = arg1_20id;
        }
        boolean existeClaseEnActividad124mtemp = sampleControladorPublicadorProxyid.existeClaseEnActividad(arg0_19idTemp,arg1_20idTemp);
        String tempResultreturnp125 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(existeClaseEnActividad124mtemp));
        %>
        <%= tempResultreturnp125 %>
        <%
break;
case 131:
        gotMethod = true;
        String arg0_21id=  request.getParameter("arg0134");
            java.lang.String arg0_21idTemp = null;
        if(!arg0_21id.equals("")){
         arg0_21idTemp  = arg0_21id;
        }
        publicadores.DtClase[] getDtClasesDeActividad131mtemp = sampleControladorPublicadorProxyid.getDtClasesDeActividad(arg0_21idTemp);
if(getDtClasesDeActividad131mtemp == null){
%>
<%=getDtClasesDeActividad131mtemp %>
<%
}else{
        String tempreturnp132 = null;
        if(getDtClasesDeActividad131mtemp != null){
        java.util.List listreturnp132= java.util.Arrays.asList(getDtClasesDeActividad131mtemp);
        tempreturnp132 = listreturnp132.toString();
        }
        %>
        <%=tempreturnp132%>
        <%
}
break;
case 136:
        gotMethod = true;
        String arg0_22id=  request.getParameter("arg0139");
            java.lang.String arg0_22idTemp = null;
        if(!arg0_22id.equals("")){
         arg0_22idTemp  = arg0_22id;
        }
        boolean existeActividad136mtemp = sampleControladorPublicadorProxyid.existeActividad(arg0_22idTemp);
        String tempResultreturnp137 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(existeActividad136mtemp));
        %>
        <%= tempResultreturnp137 %>
        <%
break;
case 141:
        gotMethod = true;
        String arg0_23id=  request.getParameter("arg0162");
            java.lang.String arg0_23idTemp = null;
        if(!arg0_23id.equals("")){
         arg0_23idTemp  = arg0_23id;
        }
        publicadores.DtActividad getDtActividad141mtemp = sampleControladorPublicadorProxyid.getDtActividad(arg0_23idTemp);
if(getDtActividad141mtemp == null){
%>
<%=getDtActividad141mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fechaRegistro:</TD>
<TD>
<%
if(getDtActividad141mtemp != null){
java.util.Calendar typefechaRegistro144 = getDtActividad141mtemp.getFechaRegistro();
        java.text.DateFormat dateFormatfechaRegistro144 = java.text.DateFormat.getDateInstance();
        java.util.Date datefechaRegistro144 = typefechaRegistro144.getTime();
        String tempResultfechaRegistro144 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfechaRegistro144.format(datefechaRegistro144));
        %>
        <%= tempResultfechaRegistro144 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">descripcion:</TD>
<TD>
<%
if(getDtActividad141mtemp != null){
java.lang.String typedescripcion146 = getDtActividad141mtemp.getDescripcion();
        String tempResultdescripcion146 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcion146));
        %>
        <%= tempResultdescripcion146 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">institucion:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">descripcion:</TD>
<TD>
<%
if(getDtActividad141mtemp != null){
publicadores.InstitucionDeportiva tebece0=getDtActividad141mtemp.getInstitucion();
if(tebece0 != null){
java.lang.String typedescripcion150 = tebece0.getDescripcion();
        String tempResultdescripcion150 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcion150));
        %>
        <%= tempResultdescripcion150 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">url:</TD>
<TD>
<%
if(getDtActividad141mtemp != null){
publicadores.InstitucionDeportiva tebece0=getDtActividad141mtemp.getInstitucion();
if(tebece0 != null){
java.lang.String typeurl152 = tebece0.getUrl();
        String tempResulturl152 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeurl152));
        %>
        <%= tempResulturl152 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(getDtActividad141mtemp != null){
publicadores.InstitucionDeportiva tebece0=getDtActividad141mtemp.getInstitucion();
if(tebece0 != null){
java.lang.String typenombre154 = tebece0.getNombre();
        String tempResultnombre154 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre154));
        %>
        <%= tempResultnombre154 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">duracionMinutos:</TD>
<TD>
<%
if(getDtActividad141mtemp != null){
%>
<%=getDtActividad141mtemp.getDuracionMinutos()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">costo:</TD>
<TD>
<%
if(getDtActividad141mtemp != null){
%>
<%=getDtActividad141mtemp.getCosto()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(getDtActividad141mtemp != null){
java.lang.String typenombre160 = getDtActividad141mtemp.getNombre();
        String tempResultnombre160 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre160));
        %>
        <%= tempResultnombre160 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 164:
        gotMethod = true;
        String arg0_24id=  request.getParameter("arg0213");
            java.lang.String arg0_24idTemp = null;
        if(!arg0_24id.equals("")){
         arg0_24idTemp  = arg0_24id;
        }
        publicadores.Clase buscarClase164mtemp = sampleControladorPublicadorProxyid.buscarClase(arg0_24idTemp);
if(buscarClase164mtemp == null){
%>
<%=buscarClase164mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fechaRegistro:</TD>
<TD>
<%
if(buscarClase164mtemp != null){
java.util.Calendar typefechaRegistro167 = buscarClase164mtemp.getFechaRegistro();
        java.text.DateFormat dateFormatfechaRegistro167 = java.text.DateFormat.getDateInstance();
        java.util.Date datefechaRegistro167 = typefechaRegistro167.getTime();
        String tempResultfechaRegistro167 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfechaRegistro167.format(datefechaRegistro167));
        %>
        <%= tempResultfechaRegistro167 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">urlClase:</TD>
<TD>
<%
if(buscarClase164mtemp != null){
java.lang.String typeurlClase169 = buscarClase164mtemp.getUrlClase();
        String tempResulturlClase169 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeurlClase169));
        %>
        <%= tempResulturlClase169 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nombreClase:</TD>
<TD>
<%
if(buscarClase164mtemp != null){
java.lang.String typenombreClase171 = buscarClase164mtemp.getNombreClase();
        String tempResultnombreClase171 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombreClase171));
        %>
        <%= tempResultnombreClase171 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">actividadDeportiva:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">fechaRegistro:</TD>
<TD>
<%
if(buscarClase164mtemp != null){
publicadores.ActividadDeportiva tebece0=buscarClase164mtemp.getActividadDeportiva();
if(tebece0 != null){
java.util.Calendar typefechaRegistro175 = tebece0.getFechaRegistro();
        java.text.DateFormat dateFormatfechaRegistro175 = java.text.DateFormat.getDateInstance();
        java.util.Date datefechaRegistro175 = typefechaRegistro175.getTime();
        String tempResultfechaRegistro175 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfechaRegistro175.format(datefechaRegistro175));
        %>
        <%= tempResultfechaRegistro175 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">institucion:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="0" ALIGN="LEFT">descripcion:</TD>
<TD>
<%
if(buscarClase164mtemp != null){
publicadores.ActividadDeportiva tebece0=buscarClase164mtemp.getActividadDeportiva();
if(tebece0 != null){
publicadores.InstitucionDeportiva tebece1=tebece0.getInstitucion();
if(tebece1 != null){
java.lang.String typedescripcion179 = tebece1.getDescripcion();
        String tempResultdescripcion179 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcion179));
        %>
        <%= tempResultdescripcion179 %>
        <%
}}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="0" ALIGN="LEFT">url:</TD>
<TD>
<%
if(buscarClase164mtemp != null){
publicadores.ActividadDeportiva tebece0=buscarClase164mtemp.getActividadDeportiva();
if(tebece0 != null){
publicadores.InstitucionDeportiva tebece1=tebece0.getInstitucion();
if(tebece1 != null){
java.lang.String typeurl181 = tebece1.getUrl();
        String tempResulturl181 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeurl181));
        %>
        <%= tempResulturl181 %>
        <%
}}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="0" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(buscarClase164mtemp != null){
publicadores.ActividadDeportiva tebece0=buscarClase164mtemp.getActividadDeportiva();
if(tebece0 != null){
publicadores.InstitucionDeportiva tebece1=tebece0.getInstitucion();
if(tebece1 != null){
java.lang.String typenombre183 = tebece1.getNombre();
        String tempResultnombre183 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre183));
        %>
        <%= tempResultnombre183 %>
        <%
}}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">descripcion:</TD>
<TD>
<%
if(buscarClase164mtemp != null){
publicadores.ActividadDeportiva tebece0=buscarClase164mtemp.getActividadDeportiva();
if(tebece0 != null){
java.lang.String typedescripcion185 = tebece0.getDescripcion();
        String tempResultdescripcion185 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcion185));
        %>
        <%= tempResultdescripcion185 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">duracionMinutos:</TD>
<TD>
<%
if(buscarClase164mtemp != null){
publicadores.ActividadDeportiva tebece0=buscarClase164mtemp.getActividadDeportiva();
if(tebece0 != null){
%>
<%=tebece0.getDuracionMinutos()
%><%}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(buscarClase164mtemp != null){
publicadores.ActividadDeportiva tebece0=buscarClase164mtemp.getActividadDeportiva();
if(tebece0 != null){
java.lang.String typenombre189 = tebece0.getNombre();
        String tempResultnombre189 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre189));
        %>
        <%= tempResultnombre189 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">costo:</TD>
<TD>
<%
if(buscarClase164mtemp != null){
publicadores.ActividadDeportiva tebece0=buscarClase164mtemp.getActividadDeportiva();
if(tebece0 != null){
%>
<%=tebece0.getCosto()
%><%}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fechaClase:</TD>
<TD>
<%
if(buscarClase164mtemp != null){
java.util.Calendar typefechaClase193 = buscarClase164mtemp.getFechaClase();
        java.text.DateFormat dateFormatfechaClase193 = java.text.DateFormat.getDateInstance();
        java.util.Date datefechaClase193 = typefechaClase193.getTime();
        String tempResultfechaClase193 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfechaClase193.format(datefechaClase193));
        %>
        <%= tempResultfechaClase193 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">profesor:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">institucion:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="0" ALIGN="LEFT">descripcion:</TD>
<TD>
<%
if(buscarClase164mtemp != null){
publicadores.Profesor tebece0=buscarClase164mtemp.getProfesor();
if(tebece0 != null){
publicadores.InstitucionDeportiva tebece1=tebece0.getInstitucion();
if(tebece1 != null){
java.lang.String typedescripcion199 = tebece1.getDescripcion();
        String tempResultdescripcion199 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcion199));
        %>
        <%= tempResultdescripcion199 %>
        <%
}}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="0" ALIGN="LEFT">url:</TD>
<TD>
<%
if(buscarClase164mtemp != null){
publicadores.Profesor tebece0=buscarClase164mtemp.getProfesor();
if(tebece0 != null){
publicadores.InstitucionDeportiva tebece1=tebece0.getInstitucion();
if(tebece1 != null){
java.lang.String typeurl201 = tebece1.getUrl();
        String tempResulturl201 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeurl201));
        %>
        <%= tempResulturl201 %>
        <%
}}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="0" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(buscarClase164mtemp != null){
publicadores.Profesor tebece0=buscarClase164mtemp.getProfesor();
if(tebece0 != null){
publicadores.InstitucionDeportiva tebece1=tebece0.getInstitucion();
if(tebece1 != null){
java.lang.String typenombre203 = tebece1.getNombre();
        String tempResultnombre203 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre203));
        %>
        <%= tempResultnombre203 %>
        <%
}}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">descripcionGeneral:</TD>
<TD>
<%
if(buscarClase164mtemp != null){
publicadores.Profesor tebece0=buscarClase164mtemp.getProfesor();
if(tebece0 != null){
java.lang.String typedescripcionGeneral205 = tebece0.getDescripcionGeneral();
        String tempResultdescripcionGeneral205 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcionGeneral205));
        %>
        <%= tempResultdescripcionGeneral205 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">sitioWeb:</TD>
<TD>
<%
if(buscarClase164mtemp != null){
publicadores.Profesor tebece0=buscarClase164mtemp.getProfesor();
if(tebece0 != null){
java.lang.String typesitioWeb207 = tebece0.getSitioWeb();
        String tempResultsitioWeb207 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typesitioWeb207));
        %>
        <%= tempResultsitioWeb207 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">biografia:</TD>
<TD>
<%
if(buscarClase164mtemp != null){
publicadores.Profesor tebece0=buscarClase164mtemp.getProfesor();
if(tebece0 != null){
java.lang.String typebiografia209 = tebece0.getBiografia();
        String tempResultbiografia209 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typebiografia209));
        %>
        <%= tempResultbiografia209 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">horaInicio:</TD>
<TD>
<%
if(buscarClase164mtemp != null){
java.lang.String typehoraInicio211 = buscarClase164mtemp.getHoraInicio();
        String tempResulthoraInicio211 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typehoraInicio211));
        %>
        <%= tempResulthoraInicio211 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 215:
        gotMethod = true;
        String arg0_25id=  request.getParameter("arg0218");
            java.lang.String arg0_25idTemp = null;
        if(!arg0_25id.equals("")){
         arg0_25idTemp  = arg0_25id;
        }
        String fechaRegistro_27id=  request.getParameter("fechaRegistro222");
            java.util.Calendar fechaRegistro_27idTemp = null;
        if(!fechaRegistro_27id.equals("")){
        java.text.DateFormat dateFormatfechaRegistro222 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaRegistro222  = dateFormatfechaRegistro222.parse(fechaRegistro_27id);
         fechaRegistro_27idTemp = new java.util.GregorianCalendar();
        fechaRegistro_27idTemp.setTime(dateTempfechaRegistro222);
        }
        String descripcion_28id=  request.getParameter("descripcion224");
            java.lang.String descripcion_28idTemp = null;
        if(!descripcion_28id.equals("")){
         descripcion_28idTemp  = descripcion_28id;
        }
        String descripcion_30id=  request.getParameter("descripcion228");
            java.lang.String descripcion_30idTemp = null;
        if(!descripcion_30id.equals("")){
         descripcion_30idTemp  = descripcion_30id;
        }
        String url_31id=  request.getParameter("url230");
            java.lang.String url_31idTemp = null;
        if(!url_31id.equals("")){
         url_31idTemp  = url_31id;
        }
        String nombre_32id=  request.getParameter("nombre232");
            java.lang.String nombre_32idTemp = null;
        if(!nombre_32id.equals("")){
         nombre_32idTemp  = nombre_32id;
        }
        %>
        <jsp:useBean id="publicadores1InstitucionDeportiva_29id" scope="session" class="publicadores.InstitucionDeportiva" />
        <%
        publicadores1InstitucionDeportiva_29id.setDescripcion(descripcion_30idTemp);
        publicadores1InstitucionDeportiva_29id.setUrl(url_31idTemp);
        publicadores1InstitucionDeportiva_29id.setNombre(nombre_32idTemp);
        String duracionMinutos_33id=  request.getParameter("duracionMinutos234");
        int duracionMinutos_33idTemp  = Integer.parseInt(duracionMinutos_33id);
        String costo_34id=  request.getParameter("costo236");
        double costo_34idTemp  = Double.parseDouble(costo_34id);
        String nombre_35id=  request.getParameter("nombre238");
            java.lang.String nombre_35idTemp = null;
        if(!nombre_35id.equals("")){
         nombre_35idTemp  = nombre_35id;
        }
        %>
        <jsp:useBean id="publicadores1DtActividad_26id" scope="session" class="publicadores.DtActividad" />
        <%
        publicadores1DtActividad_26id.setFechaRegistro(fechaRegistro_27idTemp);
        publicadores1DtActividad_26id.setDescripcion(descripcion_28idTemp);
        publicadores1DtActividad_26id.setInstitucion(publicadores1InstitucionDeportiva_29id);
        publicadores1DtActividad_26id.setDuracionMinutos(duracionMinutos_33idTemp);
        publicadores1DtActividad_26id.setCosto(costo_34idTemp);
        publicadores1DtActividad_26id.setNombre(nombre_35idTemp);
        String arg2_36id=  request.getParameter("arg2240");
            java.util.Calendar arg2_36idTemp = null;
        if(!arg2_36id.equals("")){
        java.text.DateFormat dateFormatarg2240 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTemparg2240  = dateFormatarg2240.parse(arg2_36id);
         arg2_36idTemp = new java.util.GregorianCalendar();
        arg2_36idTemp.setTime(dateTemparg2240);
        }
        String arg3_37id=  request.getParameter("arg3242");
            java.lang.String arg3_37idTemp = null;
        if(!arg3_37id.equals("")){
         arg3_37idTemp  = arg3_37id;
        }
        String arg4_38id=  request.getParameter("arg4244");
            java.lang.String arg4_38idTemp = null;
        if(!arg4_38id.equals("")){
         arg4_38idTemp  = arg4_38id;
        }
        String arg5_39id=  request.getParameter("arg5246");
            java.lang.String arg5_39idTemp = null;
        if(!arg5_39id.equals("")){
         arg5_39idTemp  = arg5_39id;
        }
        String arg6_40id=  request.getParameter("arg6248");
            java.util.Calendar arg6_40idTemp = null;
        if(!arg6_40id.equals("")){
        java.text.DateFormat dateFormatarg6248 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTemparg6248  = dateFormatarg6248.parse(arg6_40id);
         arg6_40idTemp = new java.util.GregorianCalendar();
        arg6_40idTemp.setTime(dateTemparg6248);
        }
        sampleControladorPublicadorProxyid.altaDictadoClase(arg0_25idTemp,publicadores1DtActividad_26id,arg2_36idTemp,arg3_37idTemp,arg4_38idTemp,arg5_39idTemp,arg6_40idTemp);
break;
case 250:
        gotMethod = true;
        publicadores.DtClase[] getRankingClases250mtemp = sampleControladorPublicadorProxyid.getRankingClases();
if(getRankingClases250mtemp == null){
%>
<%=getRankingClases250mtemp %>
<%
}else{
        String tempreturnp251 = null;
        if(getRankingClases250mtemp != null){
        java.util.List listreturnp251= java.util.Arrays.asList(getRankingClases250mtemp);
        tempreturnp251 = listreturnp251.toString();
        }
        %>
        <%=tempreturnp251%>
        <%
}
break;
case 253:
        gotMethod = true;
        String arg0_41id=  request.getParameter("arg0256");
            java.lang.String arg0_41idTemp = null;
        if(!arg0_41id.equals("")){
         arg0_41idTemp  = arg0_41id;
        }
        java.lang.String[] obtenerNombreSociosDeClase253mtemp = sampleControladorPublicadorProxyid.obtenerNombreSociosDeClase(arg0_41idTemp);
if(obtenerNombreSociosDeClase253mtemp == null){
%>
<%=obtenerNombreSociosDeClase253mtemp %>
<%
}else{
        String tempreturnp254 = null;
        if(obtenerNombreSociosDeClase253mtemp != null){
        java.util.List listreturnp254= java.util.Arrays.asList(obtenerNombreSociosDeClase253mtemp);
        tempreturnp254 = listreturnp254.toString();
        }
        %>
        <%=tempreturnp254%>
        <%
}
break;
case 258:
        gotMethod = true;
        String arg0_42id=  request.getParameter("arg0291");
            java.lang.String arg0_42idTemp = null;
        if(!arg0_42id.equals("")){
         arg0_42idTemp  = arg0_42id;
        }
        publicadores.DtClase getDtClase258mtemp = sampleControladorPublicadorProxyid.getDtClase(arg0_42idTemp);
if(getDtClase258mtemp == null){
%>
<%=getDtClase258mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fechaRegistro:</TD>
<TD>
<%
if(getDtClase258mtemp != null){
java.util.Calendar typefechaRegistro261 = getDtClase258mtemp.getFechaRegistro();
        java.text.DateFormat dateFormatfechaRegistro261 = java.text.DateFormat.getDateInstance();
        java.util.Date datefechaRegistro261 = typefechaRegistro261.getTime();
        String tempResultfechaRegistro261 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfechaRegistro261.format(datefechaRegistro261));
        %>
        <%= tempResultfechaRegistro261 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">url:</TD>
<TD>
<%
if(getDtClase258mtemp != null){
java.lang.String typeurl263 = getDtClase258mtemp.getUrl();
        String tempResulturl263 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeurl263));
        %>
        <%= tempResulturl263 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fechaClase:</TD>
<TD>
<%
if(getDtClase258mtemp != null){
java.util.Calendar typefechaClase265 = getDtClase258mtemp.getFechaClase();
        java.text.DateFormat dateFormatfechaClase265 = java.text.DateFormat.getDateInstance();
        java.util.Date datefechaClase265 = typefechaClase265.getTime();
        String tempResultfechaClase265 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfechaClase265.format(datefechaClase265));
        %>
        <%= tempResultfechaClase265 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">horaInicio:</TD>
<TD>
<%
if(getDtClase258mtemp != null){
java.lang.String typehoraInicio267 = getDtClase258mtemp.getHoraInicio();
        String tempResulthoraInicio267 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typehoraInicio267));
        %>
        <%= tempResulthoraInicio267 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(getDtClase258mtemp != null){
java.lang.String typenombre269 = getDtClase258mtemp.getNombre();
        String tempResultnombre269 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre269));
        %>
        <%= tempResultnombre269 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">actividad:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">fechaRegistro:</TD>
<TD>
<%
if(getDtClase258mtemp != null){
publicadores.ActividadDeportiva tebece0=getDtClase258mtemp.getActividad();
if(tebece0 != null){
java.util.Calendar typefechaRegistro273 = tebece0.getFechaRegistro();
        java.text.DateFormat dateFormatfechaRegistro273 = java.text.DateFormat.getDateInstance();
        java.util.Date datefechaRegistro273 = typefechaRegistro273.getTime();
        String tempResultfechaRegistro273 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfechaRegistro273.format(datefechaRegistro273));
        %>
        <%= tempResultfechaRegistro273 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">institucion:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="0" ALIGN="LEFT">descripcion:</TD>
<TD>
<%
if(getDtClase258mtemp != null){
publicadores.ActividadDeportiva tebece0=getDtClase258mtemp.getActividad();
if(tebece0 != null){
publicadores.InstitucionDeportiva tebece1=tebece0.getInstitucion();
if(tebece1 != null){
java.lang.String typedescripcion277 = tebece1.getDescripcion();
        String tempResultdescripcion277 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcion277));
        %>
        <%= tempResultdescripcion277 %>
        <%
}}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="0" ALIGN="LEFT">url:</TD>
<TD>
<%
if(getDtClase258mtemp != null){
publicadores.ActividadDeportiva tebece0=getDtClase258mtemp.getActividad();
if(tebece0 != null){
publicadores.InstitucionDeportiva tebece1=tebece0.getInstitucion();
if(tebece1 != null){
java.lang.String typeurl279 = tebece1.getUrl();
        String tempResulturl279 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeurl279));
        %>
        <%= tempResulturl279 %>
        <%
}}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="0" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(getDtClase258mtemp != null){
publicadores.ActividadDeportiva tebece0=getDtClase258mtemp.getActividad();
if(tebece0 != null){
publicadores.InstitucionDeportiva tebece1=tebece0.getInstitucion();
if(tebece1 != null){
java.lang.String typenombre281 = tebece1.getNombre();
        String tempResultnombre281 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre281));
        %>
        <%= tempResultnombre281 %>
        <%
}}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">descripcion:</TD>
<TD>
<%
if(getDtClase258mtemp != null){
publicadores.ActividadDeportiva tebece0=getDtClase258mtemp.getActividad();
if(tebece0 != null){
java.lang.String typedescripcion283 = tebece0.getDescripcion();
        String tempResultdescripcion283 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcion283));
        %>
        <%= tempResultdescripcion283 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">duracionMinutos:</TD>
<TD>
<%
if(getDtClase258mtemp != null){
publicadores.ActividadDeportiva tebece0=getDtClase258mtemp.getActividad();
if(tebece0 != null){
%>
<%=tebece0.getDuracionMinutos()
%><%}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(getDtClase258mtemp != null){
publicadores.ActividadDeportiva tebece0=getDtClase258mtemp.getActividad();
if(tebece0 != null){
java.lang.String typenombre287 = tebece0.getNombre();
        String tempResultnombre287 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre287));
        %>
        <%= tempResultnombre287 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">costo:</TD>
<TD>
<%
if(getDtClase258mtemp != null){
publicadores.ActividadDeportiva tebece0=getDtClase258mtemp.getActividad();
if(tebece0 != null){
%>
<%=tebece0.getCosto()
%><%}}%>
</TD>
</TABLE>
<%
}
break;
case 293:
        gotMethod = true;
        String arg0_43id=  request.getParameter("arg0296");
            java.lang.String arg0_43idTemp = null;
        if(!arg0_43id.equals("")){
         arg0_43idTemp  = arg0_43id;
        }
        boolean existeClase293mtemp = sampleControladorPublicadorProxyid.existeClase(arg0_43idTemp);
        String tempResultreturnp294 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(existeClase293mtemp));
        %>
        <%= tempResultreturnp294 %>
        <%
break;
case 298:
        gotMethod = true;
        String arg0_44id=  request.getParameter("arg0301");
            java.lang.String arg0_44idTemp = null;
        if(!arg0_44id.equals("")){
         arg0_44idTemp  = arg0_44id;
        }
        String arg1_45id=  request.getParameter("arg1303");
            java.lang.String arg1_45idTemp = null;
        if(!arg1_45id.equals("")){
         arg1_45idTemp  = arg1_45id;
        }
        String arg2_46id=  request.getParameter("arg2305");
            java.lang.String arg2_46idTemp = null;
        if(!arg2_46id.equals("")){
         arg2_46idTemp  = arg2_46id;
        }
        sampleControladorPublicadorProxyid.altaInstitucionDeportiva(arg0_44idTemp,arg1_45idTemp,arg2_46idTemp);
break;
case 307:
        gotMethod = true;
        String arg0_47id=  request.getParameter("arg0316");
            java.lang.String arg0_47idTemp = null;
        if(!arg0_47id.equals("")){
         arg0_47idTemp  = arg0_47id;
        }
        publicadores.InstitucionDeportiva buscarInstitucionDeportiva307mtemp = sampleControladorPublicadorProxyid.buscarInstitucionDeportiva(arg0_47idTemp);
if(buscarInstitucionDeportiva307mtemp == null){
%>
<%=buscarInstitucionDeportiva307mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">descripcion:</TD>
<TD>
<%
if(buscarInstitucionDeportiva307mtemp != null){
java.lang.String typedescripcion310 = buscarInstitucionDeportiva307mtemp.getDescripcion();
        String tempResultdescripcion310 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcion310));
        %>
        <%= tempResultdescripcion310 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">url:</TD>
<TD>
<%
if(buscarInstitucionDeportiva307mtemp != null){
java.lang.String typeurl312 = buscarInstitucionDeportiva307mtemp.getUrl();
        String tempResulturl312 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeurl312));
        %>
        <%= tempResulturl312 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(buscarInstitucionDeportiva307mtemp != null){
java.lang.String typenombre314 = buscarInstitucionDeportiva307mtemp.getNombre();
        String tempResultnombre314 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre314));
        %>
        <%= tempResultnombre314 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 318:
        gotMethod = true;
        String descripcion_49id=  request.getParameter("descripcion323");
            java.lang.String descripcion_49idTemp = null;
        if(!descripcion_49id.equals("")){
         descripcion_49idTemp  = descripcion_49id;
        }
        String url_50id=  request.getParameter("url325");
            java.lang.String url_50idTemp = null;
        if(!url_50id.equals("")){
         url_50idTemp  = url_50id;
        }
        String nombre_51id=  request.getParameter("nombre327");
            java.lang.String nombre_51idTemp = null;
        if(!nombre_51id.equals("")){
         nombre_51idTemp  = nombre_51id;
        }
        %>
        <jsp:useBean id="publicadores1InstitucionDeportiva_48id" scope="session" class="publicadores.InstitucionDeportiva" />
        <%
        publicadores1InstitucionDeportiva_48id.setDescripcion(descripcion_49idTemp);
        publicadores1InstitucionDeportiva_48id.setUrl(url_50idTemp);
        publicadores1InstitucionDeportiva_48id.setNombre(nombre_51idTemp);
        String fechaRegistro_53id=  request.getParameter("fechaRegistro331");
            java.util.Calendar fechaRegistro_53idTemp = null;
        if(!fechaRegistro_53id.equals("")){
        java.text.DateFormat dateFormatfechaRegistro331 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaRegistro331  = dateFormatfechaRegistro331.parse(fechaRegistro_53id);
         fechaRegistro_53idTemp = new java.util.GregorianCalendar();
        fechaRegistro_53idTemp.setTime(dateTempfechaRegistro331);
        }
        String descripcion_55id=  request.getParameter("descripcion335");
            java.lang.String descripcion_55idTemp = null;
        if(!descripcion_55id.equals("")){
         descripcion_55idTemp  = descripcion_55id;
        }
        String url_56id=  request.getParameter("url337");
            java.lang.String url_56idTemp = null;
        if(!url_56id.equals("")){
         url_56idTemp  = url_56id;
        }
        String nombre_57id=  request.getParameter("nombre339");
            java.lang.String nombre_57idTemp = null;
        if(!nombre_57id.equals("")){
         nombre_57idTemp  = nombre_57id;
        }
        %>
        <jsp:useBean id="publicadores1InstitucionDeportiva_54id" scope="session" class="publicadores.InstitucionDeportiva" />
        <%
        publicadores1InstitucionDeportiva_54id.setDescripcion(descripcion_55idTemp);
        publicadores1InstitucionDeportiva_54id.setUrl(url_56idTemp);
        publicadores1InstitucionDeportiva_54id.setNombre(nombre_57idTemp);
        String descripcion_58id=  request.getParameter("descripcion341");
            java.lang.String descripcion_58idTemp = null;
        if(!descripcion_58id.equals("")){
         descripcion_58idTemp  = descripcion_58id;
        }
        String duracionMinutos_59id=  request.getParameter("duracionMinutos343");
        int duracionMinutos_59idTemp  = Integer.parseInt(duracionMinutos_59id);
        String nombre_60id=  request.getParameter("nombre345");
            java.lang.String nombre_60idTemp = null;
        if(!nombre_60id.equals("")){
         nombre_60idTemp  = nombre_60id;
        }
        String costo_61id=  request.getParameter("costo347");
        double costo_61idTemp  = Double.parseDouble(costo_61id);
        %>
        <jsp:useBean id="publicadores1ActividadDeportiva_52id" scope="session" class="publicadores.ActividadDeportiva" />
        <%
        publicadores1ActividadDeportiva_52id.setFechaRegistro(fechaRegistro_53idTemp);
        publicadores1ActividadDeportiva_52id.setInstitucion(publicadores1InstitucionDeportiva_54id);
        publicadores1ActividadDeportiva_52id.setDescripcion(descripcion_58idTemp);
        publicadores1ActividadDeportiva_52id.setDuracionMinutos(duracionMinutos_59idTemp);
        publicadores1ActividadDeportiva_52id.setNombre(nombre_60idTemp);
        publicadores1ActividadDeportiva_52id.setCosto(costo_61idTemp);
        sampleControladorPublicadorProxyid.agregarActividadAInstitucion(publicadores1InstitucionDeportiva_48id,publicadores1ActividadDeportiva_52id);
break;
case 349:
        gotMethod = true;
        String arg0_62id=  request.getParameter("arg0370");
            java.lang.String arg0_62idTemp = null;
        if(!arg0_62id.equals("")){
         arg0_62idTemp  = arg0_62id;
        }
        String arg1_63id=  request.getParameter("arg1372");
            java.lang.String arg1_63idTemp = null;
        if(!arg1_63id.equals("")){
         arg1_63idTemp  = arg1_63id;
        }
        publicadores.ActividadDeportiva buscarActividadDeportivaEnInstitucion349mtemp = sampleControladorPublicadorProxyid.buscarActividadDeportivaEnInstitucion(arg0_62idTemp,arg1_63idTemp);
if(buscarActividadDeportivaEnInstitucion349mtemp == null){
%>
<%=buscarActividadDeportivaEnInstitucion349mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fechaRegistro:</TD>
<TD>
<%
if(buscarActividadDeportivaEnInstitucion349mtemp != null){
java.util.Calendar typefechaRegistro352 = buscarActividadDeportivaEnInstitucion349mtemp.getFechaRegistro();
        java.text.DateFormat dateFormatfechaRegistro352 = java.text.DateFormat.getDateInstance();
        java.util.Date datefechaRegistro352 = typefechaRegistro352.getTime();
        String tempResultfechaRegistro352 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfechaRegistro352.format(datefechaRegistro352));
        %>
        <%= tempResultfechaRegistro352 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">institucion:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">descripcion:</TD>
<TD>
<%
if(buscarActividadDeportivaEnInstitucion349mtemp != null){
publicadores.InstitucionDeportiva tebece0=buscarActividadDeportivaEnInstitucion349mtemp.getInstitucion();
if(tebece0 != null){
java.lang.String typedescripcion356 = tebece0.getDescripcion();
        String tempResultdescripcion356 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcion356));
        %>
        <%= tempResultdescripcion356 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">url:</TD>
<TD>
<%
if(buscarActividadDeportivaEnInstitucion349mtemp != null){
publicadores.InstitucionDeportiva tebece0=buscarActividadDeportivaEnInstitucion349mtemp.getInstitucion();
if(tebece0 != null){
java.lang.String typeurl358 = tebece0.getUrl();
        String tempResulturl358 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeurl358));
        %>
        <%= tempResulturl358 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(buscarActividadDeportivaEnInstitucion349mtemp != null){
publicadores.InstitucionDeportiva tebece0=buscarActividadDeportivaEnInstitucion349mtemp.getInstitucion();
if(tebece0 != null){
java.lang.String typenombre360 = tebece0.getNombre();
        String tempResultnombre360 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre360));
        %>
        <%= tempResultnombre360 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">descripcion:</TD>
<TD>
<%
if(buscarActividadDeportivaEnInstitucion349mtemp != null){
java.lang.String typedescripcion362 = buscarActividadDeportivaEnInstitucion349mtemp.getDescripcion();
        String tempResultdescripcion362 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcion362));
        %>
        <%= tempResultdescripcion362 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">duracionMinutos:</TD>
<TD>
<%
if(buscarActividadDeportivaEnInstitucion349mtemp != null){
%>
<%=buscarActividadDeportivaEnInstitucion349mtemp.getDuracionMinutos()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(buscarActividadDeportivaEnInstitucion349mtemp != null){
java.lang.String typenombre366 = buscarActividadDeportivaEnInstitucion349mtemp.getNombre();
        String tempResultnombre366 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre366));
        %>
        <%= tempResultnombre366 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">costo:</TD>
<TD>
<%
if(buscarActividadDeportivaEnInstitucion349mtemp != null){
%>
<%=buscarActividadDeportivaEnInstitucion349mtemp.getCosto()
%><%}%>
</TD>
</TABLE>
<%
}
break;
case 374:
        gotMethod = true;
        String arg0_64id=  request.getParameter("arg0377");
            java.lang.String arg0_64idTemp = null;
        if(!arg0_64id.equals("")){
         arg0_64idTemp  = arg0_64id;
        }
        String arg1_65id=  request.getParameter("arg1379");
            java.lang.String arg1_65idTemp = null;
        if(!arg1_65id.equals("")){
         arg1_65idTemp  = arg1_65id;
        }
        sampleControladorPublicadorProxyid.modificarDescripcionInstitucion(arg0_64idTemp,arg1_65idTemp);
break;
case 381:
        gotMethod = true;
        String arg0_66id=  request.getParameter("arg0384");
            java.lang.String arg0_66idTemp = null;
        if(!arg0_66id.equals("")){
         arg0_66idTemp  = arg0_66id;
        }
        String arg1_67id=  request.getParameter("arg1386");
            java.lang.String arg1_67idTemp = null;
        if(!arg1_67id.equals("")){
         arg1_67idTemp  = arg1_67id;
        }
        sampleControladorPublicadorProxyid.modificarUrlInstitucion(arg0_66idTemp,arg1_67idTemp);
break;
case 388:
        gotMethod = true;
        java.lang.String[] obtenerNombresInstituciones388mtemp = sampleControladorPublicadorProxyid.obtenerNombresInstituciones();
if(obtenerNombresInstituciones388mtemp == null){
%>
<%=obtenerNombresInstituciones388mtemp %>
<%
}else{
        String tempreturnp389 = null;
        if(obtenerNombresInstituciones388mtemp != null){
        java.util.List listreturnp389= java.util.Arrays.asList(obtenerNombresInstituciones388mtemp);
        tempreturnp389 = listreturnp389.toString();
        }
        %>
        <%=tempreturnp389%>
        <%
}
break;
case 391:
        gotMethod = true;
        String arg0_68id=  request.getParameter("arg0394");
            java.lang.String arg0_68idTemp = null;
        if(!arg0_68id.equals("")){
         arg0_68idTemp  = arg0_68id;
        }
        boolean existeInstitucion391mtemp = sampleControladorPublicadorProxyid.existeInstitucion(arg0_68idTemp);
        String tempResultreturnp392 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(existeInstitucion391mtemp));
        %>
        <%= tempResultreturnp392 %>
        <%
break;
case 396:
        gotMethod = true;
        String arg0_69id=  request.getParameter("arg0399");
            java.lang.String arg0_69idTemp = null;
        if(!arg0_69id.equals("")){
         arg0_69idTemp  = arg0_69id;
        }
        String arg1_70id=  request.getParameter("arg1401");
            java.lang.String arg1_70idTemp = null;
        if(!arg1_70id.equals("")){
         arg1_70idTemp  = arg1_70id;
        }
        boolean existeActividadEnUnaInstitucion396mtemp = sampleControladorPublicadorProxyid.existeActividadEnUnaInstitucion(arg0_69idTemp,arg1_70idTemp);
        String tempResultreturnp397 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(existeActividadEnUnaInstitucion396mtemp));
        %>
        <%= tempResultreturnp397 %>
        <%
break;
case 403:
        gotMethod = true;
        String arg0_71id=  request.getParameter("arg0424");
            java.lang.String arg0_71idTemp = null;
        if(!arg0_71id.equals("")){
         arg0_71idTemp  = arg0_71id;
        }
        String arg1_72id=  request.getParameter("arg1426");
            java.lang.String arg1_72idTemp = null;
        if(!arg1_72id.equals("")){
         arg1_72idTemp  = arg1_72id;
        }
        publicadores.DtActividad obtenerActividadDeUnaInstitucion403mtemp = sampleControladorPublicadorProxyid.obtenerActividadDeUnaInstitucion(arg0_71idTemp,arg1_72idTemp);
if(obtenerActividadDeUnaInstitucion403mtemp == null){
%>
<%=obtenerActividadDeUnaInstitucion403mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fechaRegistro:</TD>
<TD>
<%
if(obtenerActividadDeUnaInstitucion403mtemp != null){
java.util.Calendar typefechaRegistro406 = obtenerActividadDeUnaInstitucion403mtemp.getFechaRegistro();
        java.text.DateFormat dateFormatfechaRegistro406 = java.text.DateFormat.getDateInstance();
        java.util.Date datefechaRegistro406 = typefechaRegistro406.getTime();
        String tempResultfechaRegistro406 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfechaRegistro406.format(datefechaRegistro406));
        %>
        <%= tempResultfechaRegistro406 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">descripcion:</TD>
<TD>
<%
if(obtenerActividadDeUnaInstitucion403mtemp != null){
java.lang.String typedescripcion408 = obtenerActividadDeUnaInstitucion403mtemp.getDescripcion();
        String tempResultdescripcion408 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcion408));
        %>
        <%= tempResultdescripcion408 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">institucion:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">descripcion:</TD>
<TD>
<%
if(obtenerActividadDeUnaInstitucion403mtemp != null){
publicadores.InstitucionDeportiva tebece0=obtenerActividadDeUnaInstitucion403mtemp.getInstitucion();
if(tebece0 != null){
java.lang.String typedescripcion412 = tebece0.getDescripcion();
        String tempResultdescripcion412 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcion412));
        %>
        <%= tempResultdescripcion412 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">url:</TD>
<TD>
<%
if(obtenerActividadDeUnaInstitucion403mtemp != null){
publicadores.InstitucionDeportiva tebece0=obtenerActividadDeUnaInstitucion403mtemp.getInstitucion();
if(tebece0 != null){
java.lang.String typeurl414 = tebece0.getUrl();
        String tempResulturl414 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeurl414));
        %>
        <%= tempResulturl414 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(obtenerActividadDeUnaInstitucion403mtemp != null){
publicadores.InstitucionDeportiva tebece0=obtenerActividadDeUnaInstitucion403mtemp.getInstitucion();
if(tebece0 != null){
java.lang.String typenombre416 = tebece0.getNombre();
        String tempResultnombre416 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre416));
        %>
        <%= tempResultnombre416 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">duracionMinutos:</TD>
<TD>
<%
if(obtenerActividadDeUnaInstitucion403mtemp != null){
%>
<%=obtenerActividadDeUnaInstitucion403mtemp.getDuracionMinutos()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">costo:</TD>
<TD>
<%
if(obtenerActividadDeUnaInstitucion403mtemp != null){
%>
<%=obtenerActividadDeUnaInstitucion403mtemp.getCosto()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(obtenerActividadDeUnaInstitucion403mtemp != null){
java.lang.String typenombre422 = obtenerActividadDeUnaInstitucion403mtemp.getNombre();
        String tempResultnombre422 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre422));
        %>
        <%= tempResultnombre422 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 428:
        gotMethod = true;
        String arg0_73id=  request.getParameter("arg0431");
            java.lang.String arg0_73idTemp = null;
        if(!arg0_73id.equals("")){
         arg0_73idTemp  = arg0_73id;
        }
        java.lang.String[] obtenerNombreActividadesDeUnaInstitucion428mtemp = sampleControladorPublicadorProxyid.obtenerNombreActividadesDeUnaInstitucion(arg0_73idTemp);
if(obtenerNombreActividadesDeUnaInstitucion428mtemp == null){
%>
<%=obtenerNombreActividadesDeUnaInstitucion428mtemp %>
<%
}else{
        String tempreturnp429 = null;
        if(obtenerNombreActividadesDeUnaInstitucion428mtemp != null){
        java.util.List listreturnp429= java.util.Arrays.asList(obtenerNombreActividadesDeUnaInstitucion428mtemp);
        tempreturnp429 = listreturnp429.toString();
        }
        %>
        <%=tempreturnp429%>
        <%
}
break;
case 433:
        gotMethod = true;
        String arg0_74id=  request.getParameter("arg0436");
            java.lang.String arg0_74idTemp = null;
        if(!arg0_74id.equals("")){
         arg0_74idTemp  = arg0_74id;
        }
        String arg1_75id=  request.getParameter("arg1438");
            java.lang.String arg1_75idTemp = null;
        if(!arg1_75id.equals("")){
         arg1_75idTemp  = arg1_75id;
        }
        boolean existeActividadEnInstitucion433mtemp = sampleControladorPublicadorProxyid.existeActividadEnInstitucion(arg0_74idTemp,arg1_75idTemp);
        String tempResultreturnp434 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(existeActividadEnInstitucion433mtemp));
        %>
        <%= tempResultreturnp434 %>
        <%
break;
case 440:
        gotMethod = true;
        String arg0_76id=  request.getParameter("arg0443");
            java.lang.String arg0_76idTemp = null;
        if(!arg0_76id.equals("")){
         arg0_76idTemp  = arg0_76id;
        }
        String arg1_77id=  request.getParameter("arg1445");
            java.lang.String arg1_77idTemp = null;
        if(!arg1_77id.equals("")){
         arg1_77idTemp  = arg1_77id;
        }
        java.lang.String[] obtenerNombreClasesDeActividad440mtemp = sampleControladorPublicadorProxyid.obtenerNombreClasesDeActividad(arg0_76idTemp,arg1_77idTemp);
if(obtenerNombreClasesDeActividad440mtemp == null){
%>
<%=obtenerNombreClasesDeActividad440mtemp %>
<%
}else{
        String tempreturnp441 = null;
        if(obtenerNombreClasesDeActividad440mtemp != null){
        java.util.List listreturnp441= java.util.Arrays.asList(obtenerNombreClasesDeActividad440mtemp);
        tempreturnp441 = listreturnp441.toString();
        }
        %>
        <%=tempreturnp441%>
        <%
}
break;
case 447:
        gotMethod = true;
        String arg0_78id=  request.getParameter("arg0450");
            java.lang.String arg0_78idTemp = null;
        if(!arg0_78id.equals("")){
         arg0_78idTemp  = arg0_78id;
        }
        String arg1_79id=  request.getParameter("arg1452");
            java.lang.String arg1_79idTemp = null;
        if(!arg1_79id.equals("")){
         arg1_79idTemp  = arg1_79id;
        }
        String arg2_80id=  request.getParameter("arg2454");
            java.lang.String arg2_80idTemp = null;
        if(!arg2_80id.equals("")){
         arg2_80idTemp  = arg2_80id;
        }
        boolean existeClaseDeActividad447mtemp = sampleControladorPublicadorProxyid.existeClaseDeActividad(arg0_78idTemp,arg1_79idTemp,arg2_80idTemp);
        String tempResultreturnp448 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(existeClaseDeActividad447mtemp));
        %>
        <%= tempResultreturnp448 %>
        <%
break;
case 456:
        gotMethod = true;
        String arg0_81id=  request.getParameter("arg0489");
            java.lang.String arg0_81idTemp = null;
        if(!arg0_81id.equals("")){
         arg0_81idTemp  = arg0_81id;
        }
        String arg1_82id=  request.getParameter("arg1491");
            java.lang.String arg1_82idTemp = null;
        if(!arg1_82id.equals("")){
         arg1_82idTemp  = arg1_82id;
        }
        String arg2_83id=  request.getParameter("arg2493");
            java.lang.String arg2_83idTemp = null;
        if(!arg2_83id.equals("")){
         arg2_83idTemp  = arg2_83id;
        }
        publicadores.DtClase obtenerDtClase456mtemp = sampleControladorPublicadorProxyid.obtenerDtClase(arg0_81idTemp,arg1_82idTemp,arg2_83idTemp);
if(obtenerDtClase456mtemp == null){
%>
<%=obtenerDtClase456mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fechaRegistro:</TD>
<TD>
<%
if(obtenerDtClase456mtemp != null){
java.util.Calendar typefechaRegistro459 = obtenerDtClase456mtemp.getFechaRegistro();
        java.text.DateFormat dateFormatfechaRegistro459 = java.text.DateFormat.getDateInstance();
        java.util.Date datefechaRegistro459 = typefechaRegistro459.getTime();
        String tempResultfechaRegistro459 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfechaRegistro459.format(datefechaRegistro459));
        %>
        <%= tempResultfechaRegistro459 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">url:</TD>
<TD>
<%
if(obtenerDtClase456mtemp != null){
java.lang.String typeurl461 = obtenerDtClase456mtemp.getUrl();
        String tempResulturl461 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeurl461));
        %>
        <%= tempResulturl461 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fechaClase:</TD>
<TD>
<%
if(obtenerDtClase456mtemp != null){
java.util.Calendar typefechaClase463 = obtenerDtClase456mtemp.getFechaClase();
        java.text.DateFormat dateFormatfechaClase463 = java.text.DateFormat.getDateInstance();
        java.util.Date datefechaClase463 = typefechaClase463.getTime();
        String tempResultfechaClase463 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfechaClase463.format(datefechaClase463));
        %>
        <%= tempResultfechaClase463 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">horaInicio:</TD>
<TD>
<%
if(obtenerDtClase456mtemp != null){
java.lang.String typehoraInicio465 = obtenerDtClase456mtemp.getHoraInicio();
        String tempResulthoraInicio465 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typehoraInicio465));
        %>
        <%= tempResulthoraInicio465 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(obtenerDtClase456mtemp != null){
java.lang.String typenombre467 = obtenerDtClase456mtemp.getNombre();
        String tempResultnombre467 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre467));
        %>
        <%= tempResultnombre467 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">actividad:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">fechaRegistro:</TD>
<TD>
<%
if(obtenerDtClase456mtemp != null){
publicadores.ActividadDeportiva tebece0=obtenerDtClase456mtemp.getActividad();
if(tebece0 != null){
java.util.Calendar typefechaRegistro471 = tebece0.getFechaRegistro();
        java.text.DateFormat dateFormatfechaRegistro471 = java.text.DateFormat.getDateInstance();
        java.util.Date datefechaRegistro471 = typefechaRegistro471.getTime();
        String tempResultfechaRegistro471 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfechaRegistro471.format(datefechaRegistro471));
        %>
        <%= tempResultfechaRegistro471 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">institucion:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="0" ALIGN="LEFT">descripcion:</TD>
<TD>
<%
if(obtenerDtClase456mtemp != null){
publicadores.ActividadDeportiva tebece0=obtenerDtClase456mtemp.getActividad();
if(tebece0 != null){
publicadores.InstitucionDeportiva tebece1=tebece0.getInstitucion();
if(tebece1 != null){
java.lang.String typedescripcion475 = tebece1.getDescripcion();
        String tempResultdescripcion475 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcion475));
        %>
        <%= tempResultdescripcion475 %>
        <%
}}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="0" ALIGN="LEFT">url:</TD>
<TD>
<%
if(obtenerDtClase456mtemp != null){
publicadores.ActividadDeportiva tebece0=obtenerDtClase456mtemp.getActividad();
if(tebece0 != null){
publicadores.InstitucionDeportiva tebece1=tebece0.getInstitucion();
if(tebece1 != null){
java.lang.String typeurl477 = tebece1.getUrl();
        String tempResulturl477 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeurl477));
        %>
        <%= tempResulturl477 %>
        <%
}}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="0" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(obtenerDtClase456mtemp != null){
publicadores.ActividadDeportiva tebece0=obtenerDtClase456mtemp.getActividad();
if(tebece0 != null){
publicadores.InstitucionDeportiva tebece1=tebece0.getInstitucion();
if(tebece1 != null){
java.lang.String typenombre479 = tebece1.getNombre();
        String tempResultnombre479 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre479));
        %>
        <%= tempResultnombre479 %>
        <%
}}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">descripcion:</TD>
<TD>
<%
if(obtenerDtClase456mtemp != null){
publicadores.ActividadDeportiva tebece0=obtenerDtClase456mtemp.getActividad();
if(tebece0 != null){
java.lang.String typedescripcion481 = tebece0.getDescripcion();
        String tempResultdescripcion481 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcion481));
        %>
        <%= tempResultdescripcion481 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">duracionMinutos:</TD>
<TD>
<%
if(obtenerDtClase456mtemp != null){
publicadores.ActividadDeportiva tebece0=obtenerDtClase456mtemp.getActividad();
if(tebece0 != null){
%>
<%=tebece0.getDuracionMinutos()
%><%}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(obtenerDtClase456mtemp != null){
publicadores.ActividadDeportiva tebece0=obtenerDtClase456mtemp.getActividad();
if(tebece0 != null){
java.lang.String typenombre485 = tebece0.getNombre();
        String tempResultnombre485 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre485));
        %>
        <%= tempResultnombre485 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">costo:</TD>
<TD>
<%
if(obtenerDtClase456mtemp != null){
publicadores.ActividadDeportiva tebece0=obtenerDtClase456mtemp.getActividad();
if(tebece0 != null){
%>
<%=tebece0.getCosto()
%><%}}%>
</TD>
</TABLE>
<%
}
break;
case 495:
        gotMethod = true;
        String arg0_84id=  request.getParameter("arg0504");
            java.lang.String arg0_84idTemp = null;
        if(!arg0_84id.equals("")){
         arg0_84idTemp  = arg0_84id;
        }
        publicadores.DtInstitucion getDtInstitucion495mtemp = sampleControladorPublicadorProxyid.getDtInstitucion(arg0_84idTemp);
if(getDtInstitucion495mtemp == null){
%>
<%=getDtInstitucion495mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">descripcion:</TD>
<TD>
<%
if(getDtInstitucion495mtemp != null){
java.lang.String typedescripcion498 = getDtInstitucion495mtemp.getDescripcion();
        String tempResultdescripcion498 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcion498));
        %>
        <%= tempResultdescripcion498 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">url:</TD>
<TD>
<%
if(getDtInstitucion495mtemp != null){
java.lang.String typeurl500 = getDtInstitucion495mtemp.getUrl();
        String tempResulturl500 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeurl500));
        %>
        <%= tempResulturl500 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(getDtInstitucion495mtemp != null){
java.lang.String typenombre502 = getDtInstitucion495mtemp.getNombre();
        String tempResultnombre502 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre502));
        %>
        <%= tempResultnombre502 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 506:
        gotMethod = true;
        String arg0_85id=  request.getParameter("arg0509");
            java.util.Calendar arg0_85idTemp = null;
        if(!arg0_85id.equals("")){
        java.text.DateFormat dateFormatarg0509 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTemparg0509  = dateFormatarg0509.parse(arg0_85id);
         arg0_85idTemp = new java.util.GregorianCalendar();
        arg0_85idTemp.setTime(dateTemparg0509);
        }
        String arg1_86id=  request.getParameter("arg1511");
            java.lang.String arg1_86idTemp = null;
        if(!arg1_86id.equals("")){
         arg1_86idTemp  = arg1_86id;
        }
        String arg2_87id=  request.getParameter("arg2513");
            java.lang.String arg2_87idTemp = null;
        if(!arg2_87id.equals("")){
         arg2_87idTemp  = arg2_87id;
        }
        sampleControladorPublicadorProxyid.registroDictadoClases(arg0_85idTemp,arg1_86idTemp,arg2_87idTemp);
break;
case 515:
        gotMethod = true;
        String arg0_88id=  request.getParameter("arg0518");
            java.lang.String arg0_88idTemp = null;
        if(!arg0_88id.equals("")){
         arg0_88idTemp  = arg0_88id;
        }
        String arg1_89id=  request.getParameter("arg1520");
            java.lang.String arg1_89idTemp = null;
        if(!arg1_89id.equals("")){
         arg1_89idTemp  = arg1_89id;
        }
        boolean existeRegistro515mtemp = sampleControladorPublicadorProxyid.existeRegistro(arg0_88idTemp,arg1_89idTemp);
        String tempResultreturnp516 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(existeRegistro515mtemp));
        %>
        <%= tempResultreturnp516 %>
        <%
break;
case 522:
        gotMethod = true;
        String arg0_90id=  request.getParameter("arg0525");
            java.lang.String arg0_90idTemp = null;
        if(!arg0_90id.equals("")){
         arg0_90idTemp  = arg0_90id;
        }
        String arg1_91id=  request.getParameter("arg1527");
            java.lang.String arg1_91idTemp = null;
        if(!arg1_91id.equals("")){
         arg1_91idTemp  = arg1_91id;
        }
        String arg2_92id=  request.getParameter("arg2529");
            java.lang.String arg2_92idTemp = null;
        if(!arg2_92id.equals("")){
         arg2_92idTemp  = arg2_92id;
        }
        String arg3_93id=  request.getParameter("arg3531");
            java.lang.String arg3_93idTemp = null;
        if(!arg3_93id.equals("")){
         arg3_93idTemp  = arg3_93id;
        }
        String arg4_94id=  request.getParameter("arg4533");
            java.util.Calendar arg4_94idTemp = null;
        if(!arg4_94id.equals("")){
        java.text.DateFormat dateFormatarg4533 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTemparg4533  = dateFormatarg4533.parse(arg4_94id);
         arg4_94idTemp = new java.util.GregorianCalendar();
        arg4_94idTemp.setTime(dateTemparg4533);
        }
        String descripcion_96id=  request.getParameter("descripcion537");
            java.lang.String descripcion_96idTemp = null;
        if(!descripcion_96id.equals("")){
         descripcion_96idTemp  = descripcion_96id;
        }
        String url_97id=  request.getParameter("url539");
            java.lang.String url_97idTemp = null;
        if(!url_97id.equals("")){
         url_97idTemp  = url_97id;
        }
        String nombre_98id=  request.getParameter("nombre541");
            java.lang.String nombre_98idTemp = null;
        if(!nombre_98id.equals("")){
         nombre_98idTemp  = nombre_98id;
        }
        %>
        <jsp:useBean id="publicadores1InstitucionDeportiva_95id" scope="session" class="publicadores.InstitucionDeportiva" />
        <%
        publicadores1InstitucionDeportiva_95id.setDescripcion(descripcion_96idTemp);
        publicadores1InstitucionDeportiva_95id.setUrl(url_97idTemp);
        publicadores1InstitucionDeportiva_95id.setNombre(nombre_98idTemp);
        String arg6_99id=  request.getParameter("arg6543");
            java.lang.String arg6_99idTemp = null;
        if(!arg6_99id.equals("")){
         arg6_99idTemp  = arg6_99id;
        }
        String arg7_100id=  request.getParameter("arg7545");
            java.lang.String arg7_100idTemp = null;
        if(!arg7_100id.equals("")){
         arg7_100idTemp  = arg7_100id;
        }
        String arg8_101id=  request.getParameter("arg8547");
            java.lang.String arg8_101idTemp = null;
        if(!arg8_101id.equals("")){
         arg8_101idTemp  = arg8_101id;
        }
        sampleControladorPublicadorProxyid.altaProfe(arg0_90idTemp,arg1_91idTemp,arg2_92idTemp,arg3_93idTemp,arg4_94idTemp,publicadores1InstitucionDeportiva_95id,arg6_99idTemp,arg7_100idTemp,arg8_101idTemp);
break;
case 549:
        gotMethod = true;
        String arg0_102id=  request.getParameter("arg0552");
            java.lang.String arg0_102idTemp = null;
        if(!arg0_102id.equals("")){
         arg0_102idTemp  = arg0_102id;
        }
        String arg1_103id=  request.getParameter("arg1554");
            java.lang.String arg1_103idTemp = null;
        if(!arg1_103id.equals("")){
         arg1_103idTemp  = arg1_103id;
        }
        String arg2_104id=  request.getParameter("arg2556");
            java.lang.String arg2_104idTemp = null;
        if(!arg2_104id.equals("")){
         arg2_104idTemp  = arg2_104id;
        }
        String arg3_105id=  request.getParameter("arg3558");
            java.lang.String arg3_105idTemp = null;
        if(!arg3_105id.equals("")){
         arg3_105idTemp  = arg3_105id;
        }
        String arg4_106id=  request.getParameter("arg4560");
            java.util.Calendar arg4_106idTemp = null;
        if(!arg4_106id.equals("")){
        java.text.DateFormat dateFormatarg4560 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTemparg4560  = dateFormatarg4560.parse(arg4_106id);
         arg4_106idTemp = new java.util.GregorianCalendar();
        arg4_106idTemp.setTime(dateTemparg4560);
        }
        sampleControladorPublicadorProxyid.altaSocio(arg0_102idTemp,arg1_103idTemp,arg2_104idTemp,arg3_105idTemp,arg4_106idTemp);
break;
case 562:
        gotMethod = true;
        String arg0_107id=  request.getParameter("arg0565");
            java.lang.String arg0_107idTemp = null;
        if(!arg0_107id.equals("")){
         arg0_107idTemp  = arg0_107id;
        }
        boolean existeUsuario562mtemp = sampleControladorPublicadorProxyid.existeUsuario(arg0_107idTemp);
        String tempResultreturnp563 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(existeUsuario562mtemp));
        %>
        <%= tempResultreturnp563 %>
        <%
break;
case 567:
        gotMethod = true;
        String arg0_108id=  request.getParameter("arg0570");
            java.lang.String arg0_108idTemp = null;
        if(!arg0_108id.equals("")){
         arg0_108idTemp  = arg0_108id;
        }
        boolean esSocio567mtemp = sampleControladorPublicadorProxyid.esSocio(arg0_108idTemp);
        String tempResultreturnp568 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(esSocio567mtemp));
        %>
        <%= tempResultreturnp568 %>
        <%
break;
case 572:
        gotMethod = true;
        String arg0_109id=  request.getParameter("arg0575");
            java.lang.String arg0_109idTemp = null;
        if(!arg0_109id.equals("")){
         arg0_109idTemp  = arg0_109id;
        }
        boolean esProfesor572mtemp = sampleControladorPublicadorProxyid.esProfesor(arg0_109idTemp);
        String tempResultreturnp573 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(esProfesor572mtemp));
        %>
        <%= tempResultreturnp573 %>
        <%
break;
case 577:
        gotMethod = true;
        publicadores.DtUsuario[] getUsuarios577mtemp = sampleControladorPublicadorProxyid.getUsuarios();
if(getUsuarios577mtemp == null){
%>
<%=getUsuarios577mtemp %>
<%
}else{
        String tempreturnp578 = null;
        if(getUsuarios577mtemp != null){
        java.util.List listreturnp578= java.util.Arrays.asList(getUsuarios577mtemp);
        tempreturnp578 = listreturnp578.toString();
        }
        %>
        <%=tempreturnp578%>
        <%
}
break;
case 580:
        gotMethod = true;
        String arg0_110id=  request.getParameter("arg0583");
            java.lang.String arg0_110idTemp = null;
        if(!arg0_110id.equals("")){
         arg0_110idTemp  = arg0_110id;
        }
        String arg1_111id=  request.getParameter("arg1585");
            java.lang.String arg1_111idTemp = null;
        if(!arg1_111id.equals("")){
         arg1_111idTemp  = arg1_111id;
        }
        sampleControladorPublicadorProxyid.modificarNombreUsuario(arg0_110idTemp,arg1_111idTemp);
break;
case 587:
        gotMethod = true;
        String arg0_112id=  request.getParameter("arg0590");
            java.lang.String arg0_112idTemp = null;
        if(!arg0_112id.equals("")){
         arg0_112idTemp  = arg0_112id;
        }
        String arg1_113id=  request.getParameter("arg1592");
            java.lang.String arg1_113idTemp = null;
        if(!arg1_113id.equals("")){
         arg1_113idTemp  = arg1_113id;
        }
        sampleControladorPublicadorProxyid.modificarApellido(arg0_112idTemp,arg1_113idTemp);
break;
case 594:
        gotMethod = true;
        String arg0_114id=  request.getParameter("arg0597");
            java.lang.String arg0_114idTemp = null;
        if(!arg0_114id.equals("")){
         arg0_114idTemp  = arg0_114id;
        }
        String arg1_115id=  request.getParameter("arg1599");
            java.util.Calendar arg1_115idTemp = null;
        if(!arg1_115id.equals("")){
        java.text.DateFormat dateFormatarg1599 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTemparg1599  = dateFormatarg1599.parse(arg1_115id);
         arg1_115idTemp = new java.util.GregorianCalendar();
        arg1_115idTemp.setTime(dateTemparg1599);
        }
        sampleControladorPublicadorProxyid.modificarFechaNacimiento(arg0_114idTemp,arg1_115idTemp);
break;
case 601:
        gotMethod = true;
        String arg0_116id=  request.getParameter("arg0616");
            java.lang.String arg0_116idTemp = null;
        if(!arg0_116id.equals("")){
         arg0_116idTemp  = arg0_116id;
        }
        publicadores.Usuario buscarSocio601mtemp = sampleControladorPublicadorProxyid.buscarSocio(arg0_116idTemp);
if(buscarSocio601mtemp == null){
%>
<%=buscarSocio601mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nickname:</TD>
<TD>
<%
if(buscarSocio601mtemp != null){
java.lang.String typenickname604 = buscarSocio601mtemp.getNickname();
        String tempResultnickname604 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenickname604));
        %>
        <%= tempResultnickname604 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">password:</TD>
<TD>
<%
if(buscarSocio601mtemp != null){
java.lang.String typepassword606 = buscarSocio601mtemp.getPassword();
        String tempResultpassword606 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepassword606));
        %>
        <%= tempResultpassword606 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fechaNacimiento:</TD>
<TD>
<%
if(buscarSocio601mtemp != null){
java.util.Calendar typefechaNacimiento608 = buscarSocio601mtemp.getFechaNacimiento();
        java.text.DateFormat dateFormatfechaNacimiento608 = java.text.DateFormat.getDateInstance();
        java.util.Date datefechaNacimiento608 = typefechaNacimiento608.getTime();
        String tempResultfechaNacimiento608 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfechaNacimiento608.format(datefechaNacimiento608));
        %>
        <%= tempResultfechaNacimiento608 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">correoElectronico:</TD>
<TD>
<%
if(buscarSocio601mtemp != null){
java.lang.String typecorreoElectronico610 = buscarSocio601mtemp.getCorreoElectronico();
        String tempResultcorreoElectronico610 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecorreoElectronico610));
        %>
        <%= tempResultcorreoElectronico610 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">apellido:</TD>
<TD>
<%
if(buscarSocio601mtemp != null){
java.lang.String typeapellido612 = buscarSocio601mtemp.getApellido();
        String tempResultapellido612 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeapellido612));
        %>
        <%= tempResultapellido612 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(buscarSocio601mtemp != null){
java.lang.String typenombre614 = buscarSocio601mtemp.getNombre();
        String tempResultnombre614 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre614));
        %>
        <%= tempResultnombre614 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 618:
        gotMethod = true;
        boolean existenUsuarios618mtemp = sampleControladorPublicadorProxyid.existenUsuarios();
        String tempResultreturnp619 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(existenUsuarios618mtemp));
        %>
        <%= tempResultreturnp619 %>
        <%
break;
case 621:
        gotMethod = true;
        java.lang.String[] obtenerArrayNicknames621mtemp = sampleControladorPublicadorProxyid.obtenerArrayNicknames();
if(obtenerArrayNicknames621mtemp == null){
%>
<%=obtenerArrayNicknames621mtemp %>
<%
}else{
        String tempreturnp622 = null;
        if(obtenerArrayNicknames621mtemp != null){
        java.util.List listreturnp622= java.util.Arrays.asList(obtenerArrayNicknames621mtemp);
        tempreturnp622 = listreturnp622.toString();
        }
        %>
        <%=tempreturnp622%>
        <%
}
break;
case 624:
        gotMethod = true;
        String arg0_117id=  request.getParameter("arg0639");
            java.lang.String arg0_117idTemp = null;
        if(!arg0_117id.equals("")){
         arg0_117idTemp  = arg0_117id;
        }
        publicadores.Usuario buscarUsuario624mtemp = sampleControladorPublicadorProxyid.buscarUsuario(arg0_117idTemp);
if(buscarUsuario624mtemp == null){
%>
<%=buscarUsuario624mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nickname:</TD>
<TD>
<%
if(buscarUsuario624mtemp != null){
java.lang.String typenickname627 = buscarUsuario624mtemp.getNickname();
        String tempResultnickname627 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenickname627));
        %>
        <%= tempResultnickname627 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">password:</TD>
<TD>
<%
if(buscarUsuario624mtemp != null){
java.lang.String typepassword629 = buscarUsuario624mtemp.getPassword();
        String tempResultpassword629 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepassword629));
        %>
        <%= tempResultpassword629 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fechaNacimiento:</TD>
<TD>
<%
if(buscarUsuario624mtemp != null){
java.util.Calendar typefechaNacimiento631 = buscarUsuario624mtemp.getFechaNacimiento();
        java.text.DateFormat dateFormatfechaNacimiento631 = java.text.DateFormat.getDateInstance();
        java.util.Date datefechaNacimiento631 = typefechaNacimiento631.getTime();
        String tempResultfechaNacimiento631 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfechaNacimiento631.format(datefechaNacimiento631));
        %>
        <%= tempResultfechaNacimiento631 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">correoElectronico:</TD>
<TD>
<%
if(buscarUsuario624mtemp != null){
java.lang.String typecorreoElectronico633 = buscarUsuario624mtemp.getCorreoElectronico();
        String tempResultcorreoElectronico633 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecorreoElectronico633));
        %>
        <%= tempResultcorreoElectronico633 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">apellido:</TD>
<TD>
<%
if(buscarUsuario624mtemp != null){
java.lang.String typeapellido635 = buscarUsuario624mtemp.getApellido();
        String tempResultapellido635 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeapellido635));
        %>
        <%= tempResultapellido635 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(buscarUsuario624mtemp != null){
java.lang.String typenombre637 = buscarUsuario624mtemp.getNombre();
        String tempResultnombre637 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre637));
        %>
        <%= tempResultnombre637 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 641:
        gotMethod = true;
        String arg0_118id=  request.getParameter("arg0654");
            java.lang.String arg0_118idTemp = null;
        if(!arg0_118id.equals("")){
         arg0_118idTemp  = arg0_118id;
        }
        publicadores.DtUsuario getDtUsuario641mtemp = sampleControladorPublicadorProxyid.getDtUsuario(arg0_118idTemp);
if(getDtUsuario641mtemp == null){
%>
<%=getDtUsuario641mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nickname:</TD>
<TD>
<%
if(getDtUsuario641mtemp != null){
java.lang.String typenickname644 = getDtUsuario641mtemp.getNickname();
        String tempResultnickname644 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenickname644));
        %>
        <%= tempResultnickname644 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fechaNacimiento:</TD>
<TD>
<%
if(getDtUsuario641mtemp != null){
java.util.Calendar typefechaNacimiento646 = getDtUsuario641mtemp.getFechaNacimiento();
        java.text.DateFormat dateFormatfechaNacimiento646 = java.text.DateFormat.getDateInstance();
        java.util.Date datefechaNacimiento646 = typefechaNacimiento646.getTime();
        String tempResultfechaNacimiento646 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfechaNacimiento646.format(datefechaNacimiento646));
        %>
        <%= tempResultfechaNacimiento646 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">correoElectronico:</TD>
<TD>
<%
if(getDtUsuario641mtemp != null){
java.lang.String typecorreoElectronico648 = getDtUsuario641mtemp.getCorreoElectronico();
        String tempResultcorreoElectronico648 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecorreoElectronico648));
        %>
        <%= tempResultcorreoElectronico648 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">apellido:</TD>
<TD>
<%
if(getDtUsuario641mtemp != null){
java.lang.String typeapellido650 = getDtUsuario641mtemp.getApellido();
        String tempResultapellido650 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeapellido650));
        %>
        <%= tempResultapellido650 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(getDtUsuario641mtemp != null){
java.lang.String typenombre652 = getDtUsuario641mtemp.getNombre();
        String tempResultnombre652 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre652));
        %>
        <%= tempResultnombre652 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 656:
        gotMethod = true;
        String arg0_119id=  request.getParameter("arg0659");
            java.lang.String arg0_119idTemp = null;
        if(!arg0_119id.equals("")){
         arg0_119idTemp  = arg0_119id;
        }
        publicadores.DtSocio getDtSocio656mtemp = sampleControladorPublicadorProxyid.getDtSocio(arg0_119idTemp);
if(getDtSocio656mtemp == null){
%>
<%=getDtSocio656mtemp %>
<%
}else{
        if(getDtSocio656mtemp!= null){
        String tempreturnp657 = getDtSocio656mtemp.toString();
        %>
        <%=tempreturnp657%>
        <%
        }}
break;
case 661:
        gotMethod = true;
        String arg0_120id=  request.getParameter("arg0678");
            java.lang.String arg0_120idTemp = null;
        if(!arg0_120id.equals("")){
         arg0_120idTemp  = arg0_120id;
        }
        publicadores.DtProfesor getDtProfesor661mtemp = sampleControladorPublicadorProxyid.getDtProfesor(arg0_120idTemp);
if(getDtProfesor661mtemp == null){
%>
<%=getDtProfesor661mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">institucion:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">descripcion:</TD>
<TD>
<%
if(getDtProfesor661mtemp != null){
publicadores.InstitucionDeportiva tebece0=getDtProfesor661mtemp.getInstitucion();
if(tebece0 != null){
java.lang.String typedescripcion666 = tebece0.getDescripcion();
        String tempResultdescripcion666 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcion666));
        %>
        <%= tempResultdescripcion666 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">url:</TD>
<TD>
<%
if(getDtProfesor661mtemp != null){
publicadores.InstitucionDeportiva tebece0=getDtProfesor661mtemp.getInstitucion();
if(tebece0 != null){
java.lang.String typeurl668 = tebece0.getUrl();
        String tempResulturl668 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeurl668));
        %>
        <%= tempResulturl668 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(getDtProfesor661mtemp != null){
publicadores.InstitucionDeportiva tebece0=getDtProfesor661mtemp.getInstitucion();
if(tebece0 != null){
java.lang.String typenombre670 = tebece0.getNombre();
        String tempResultnombre670 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre670));
        %>
        <%= tempResultnombre670 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">descripcionGeneral:</TD>
<TD>
<%
if(getDtProfesor661mtemp != null){
java.lang.String typedescripcionGeneral672 = getDtProfesor661mtemp.getDescripcionGeneral();
        String tempResultdescripcionGeneral672 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcionGeneral672));
        %>
        <%= tempResultdescripcionGeneral672 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">sitioWeb:</TD>
<TD>
<%
if(getDtProfesor661mtemp != null){
java.lang.String typesitioWeb674 = getDtProfesor661mtemp.getSitioWeb();
        String tempResultsitioWeb674 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typesitioWeb674));
        %>
        <%= tempResultsitioWeb674 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">biografia:</TD>
<TD>
<%
if(getDtProfesor661mtemp != null){
java.lang.String typebiografia676 = getDtProfesor661mtemp.getBiografia();
        String tempResultbiografia676 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typebiografia676));
        %>
        <%= tempResultbiografia676 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 680:
        gotMethod = true;
        publicadores.DtProfesor[] getListaProfesores680mtemp = sampleControladorPublicadorProxyid.getListaProfesores();
if(getListaProfesores680mtemp == null){
%>
<%=getListaProfesores680mtemp %>
<%
}else{
        String tempreturnp681 = null;
        if(getListaProfesores680mtemp != null){
        java.util.List listreturnp681= java.util.Arrays.asList(getListaProfesores680mtemp);
        tempreturnp681 = listreturnp681.toString();
        }
        %>
        <%=tempreturnp681%>
        <%
}
break;
case 683:
        gotMethod = true;
        String arg0_121id=  request.getParameter("arg0686");
            java.lang.String arg0_121idTemp = null;
        if(!arg0_121id.equals("")){
         arg0_121idTemp  = arg0_121id;
        }
        String arg1_122id=  request.getParameter("arg1688");
            java.lang.String arg1_122idTemp = null;
        if(!arg1_122id.equals("")){
         arg1_122idTemp  = arg1_122id;
        }
        boolean esContrasena683mtemp = sampleControladorPublicadorProxyid.esContrasena(arg0_121idTemp,arg1_122idTemp);
        String tempResultreturnp684 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(esContrasena683mtemp));
        %>
        <%= tempResultreturnp684 %>
        <%
break;
case 690:
        gotMethod = true;
        publicadores.DtInstitucion[] getInstituciones690mtemp = sampleControladorPublicadorProxyid.getInstituciones();
if(getInstituciones690mtemp == null){
%>
<%=getInstituciones690mtemp %>
<%
}else{
        String tempreturnp691 = null;
        if(getInstituciones690mtemp != null){
        java.util.List listreturnp691= java.util.Arrays.asList(getInstituciones690mtemp);
        tempreturnp691 = listreturnp691.toString();
        }
        %>
        <%=tempreturnp691%>
        <%
}
break;
}
} catch (Exception e) { 
%>
Exception: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.toString()) %>
Message: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.getMessage()) %>
<%
return;
}
if(!gotMethod){
%>
result: N/A
<%
}
%>
</BODY>
</HTML>