<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://displaytag.sf.net" prefix="display" %>

<html>
<head>
    <title>Ajout ou modification d'un employ�</title>
    <link href="style/style.css" rel="stylesheet" type="text/css" />
</head>
<body>

<form:form method="post">
<fieldset>
<legend>Employ�</legend>
    <fieldset>
        <legend>Informations</legend>
        <div id="bloc_nom">
            <div class="ligne">
                <span class="label">Civilit� :</span>
                <form:select path="civilite">
        			<form:options items="${civilites}" itemLabel="libelle" itemValue="id" />
        		</form:select>
            </div>
            <div class="ligne">
                <span class="label">Nom :</span>
				<form:input path="nom" />
				<form:errors path="nom" cssClass="error"/>
            </div>
            <div class="ligne">
                <span class="label">Pr�nom :</span>
                <form:input path="prenom" />
				<form:errors path="prenom" cssClass="error"/>
            </div>
            <div class="ligne">
                <span class="label">Date de naissance :</span>
                <form:input path="dateNaissance" />
				<form:errors path="dateNaissance" cssClass="error"/>
            </div>
        </div>
        <div id="bloc_mail_tel">
            <div class="ligne">
                <span class="label">Email :</span>
                <form:input path="email" />
				<form:errors path="email" cssClass="error"/>
            </div>
            <div class="ligne">
                <span class="label">T�l. pro :</span>
                <form:input path="telephonePro" />
				<form:errors path="telephonePro" cssClass="error"/>
            </div>
            <div class="ligne">
                <span class="label">T�l. perso :</span>
                <form:input path="telephonePerso" />
				<form:errors path="telephonePerso" cssClass="error"/>
            </div>
            <div class="ligne">
                <span class="label">T�l. mobile :</span>
                <form:input path="telephoneMobile" />
				<form:errors path="telephoneMobile" cssClass="error"/>
            </div>
            <div class="ligne">
                <span class="label">Fax :</span>
                <form:input path="fax" />
				<form:errors path="fax" cssClass="error"/>
            </div>
            <div class="ligne">
                <span class="label">Rue :</span>
                <form:input path="adrRue" />
				<form:errors path="adrRue" cssClass="error"/>
            </div>
            <div class="ligne">
                <span class="label">CP :</span>
                <form:input path="adrCp" />
				<form:errors path="adrCp" cssClass="error"/>
            </div>
            <div class="ligne">
                <span class="label">Ville :</span>
                <form:input path="adrVille" />
				<form:errors path="adrVille" cssClass="error"/>
            </div>
        </div>
    </fieldset>
    
    <fieldset>
        <legend>Emplois Pr�c�dents</legend>
        <a class="ajout" href="./gestion_emplois_ajout.htm">
            Ajouter un emploi
        </a>
        <table class="adminlist">
            <thead>
                <tr>
                    <th>Date d�but</th>
                    <th>Date fin</th>
                    <th>Poste</th>
                    <th>Entreprise</th>
                    <th>Contrat</th>
                    <th>&nbsp;</th>
                    <th>&nbsp;</th>
                </tr>
            </thead>
            <tbody>
                <tr class="row0">
                    <td>10/10/2006</td>
                    <td>20/11/2007</td>
                    <td>Secretaire Administration</td>
                    <td>Sigma Group</td>
                    <td>CDD</td>
                    <td align="center">
                        <a href="./gestion_emplois_modif.htm?id=1">
                            <img src="./images/edit.png" alt="Modifier l'utilisateur"/>
                        </a>
                    </td>
                    <td align="center">
                        <a href="./gestion_utilisateurs_suppr?id=1"  onclick="javascript: return confirm('Voulez-vous supprimer cet utilisateur?');">
                            <img src="./images/delete.png" alt="Supprimer l'utilisateur"/>
                        </a>
                    </td>
                </tr>
            </tbody>
        </table>
    </fieldset>
    
    <fieldset>
        <legend>Diplomes</legend>
        <a class="ajout" href="./add_diplome.htm?employe=${employe}">
            Ajouter un dimplome
        </a>
        <display:table name="diplomes" sort="list" class="adminlist" decorator="web.administration.ListeDiplomesDecorator">
			<display:setProperty name="css.tr.odd" value="row0" />
			<display:setProperty name="css.tr.even" value="row1" />
			<display:column property="annee" title="Ann�e" />
			<display:column property="denomination" title="D�nomination" />
			<display:column property="etablissement" title="�tablissemnt" />
			<display:column property="niveauEtude" title="Niveau" />
			<display:column property="editLink" title="&nbsp;" style="text-align:center" />
			<display:column property="supprLink" title="&nbsp;" style="text-align:center" />
		</display:table>
    </fieldset>
    
    <fieldset>
    <legend>Divers</legend>
		<div class="ligne">
		    <span class="label">Situation familiale :</span>
		    <form:select path="situationFamiliale">
       			<form:options items="${situationsFamiliale}" itemLabel="libelle" itemValue="id" />
       		</form:select>
		</div>
		<div class="ligne">
		    <span class="label">Nombre d'enfants :</span>
		    <form:select path="nbEnfants">
       			<form:options items="${nbsEnfants}" />
       		</form:select>
		</div>
		<div class="ligne">
		    <span class="label">Description :</span>
		    <form:textarea path="description" />
		    <form:errors path="description" cssClass="error"/>
		</div>    
    </fieldset>

    <div class="ligne">
        <span class="label">&nbsp;</span>
        <a href="liste_employes.htm">Retour</a>&nbsp;-&nbsp;<input type="submit" value="Valider" />
    </div>
</fieldset>
</form:form>

</body>
</html>
