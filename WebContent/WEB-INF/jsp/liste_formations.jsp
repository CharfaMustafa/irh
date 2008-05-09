<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://displaytag.sf.net" prefix="display" %>

<html>
<head>
    <title>Liste des formations</title>
    <link href="./style/style.css" rel="stylesheet" type="text/css" />
</head>
<body>

<fieldset>
	<legend>Liste des formations</legend>
	<a class="ajout" href="./add_sync_formation.htm">
        Ajouter/Synchroniser des formations
    </a>
	<display:table name="formations" sort="list" pagesize="10" class="adminlist" decorator="web.formations.ListeFormationsDecorator" requestURI="liste_formations.htm">
		<display:setProperty name="css.tr.odd" value="row0" />
		<display:setProperty name="css.tr.even" value="row1" />
		<display:column property="libelle" title="Libell�" sortable="true" />
		<display:column property="prixParPersonne" title="Prix par pers. (En &euro;)" sortable="true" />
		<display:column property="duree" title="Dur�e (En H)" sortable="true" />
		<display:column property="detailsLink" title="D�tails" style="text-align:center" />
		<display:column property="supprLink" title="&nbsp;" style="text-align:center" />
	</display:table>
</fieldset>

</body>
</html>