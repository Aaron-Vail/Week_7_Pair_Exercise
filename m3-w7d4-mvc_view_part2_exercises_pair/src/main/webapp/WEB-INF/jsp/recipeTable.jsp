<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="Recipe Table"/>
<%@ include file = "common/header.jspf" %>

 
 <section id="main-content">

       <!-- Use the request attribute "recipes" (List<Recipe>) -->
		
		<h1>Recipes</h1>
		<div id="container">
		<table id="recipeTable">
			<tr>
				<th>&nbsp;</th>
				<c:forEach items="${recipes}" var="recipe">
					<c:url var="imgRef" value="/recipeDetails?recipeId=${recipe.recipeId}" />
					<td><a href=${imgRef}><img src="img/recipe${recipe.recipeId}.jpg" class="recipeImage"/></a></td>
				</c:forEach>
			</tr>
			<tr class="greyed">
				<th>Name</th>
				<c:forEach items="${recipes}" var="recipe">
					<td class="recipeFont"><a href=${imgRef}><c:out value="${recipe.name}"/></a></td>
				</c:forEach>
			</tr>
			<tr>
				<th>Type</th>
				<c:forEach items="${recipes}" var="recipe">
					<td class="recipeFont"><c:out value="${recipe.recipeType}"/></td>
				</c:forEach>
			</tr>
			<tr class="greyed">
				<th>Cook Time</th>
				<c:forEach items="${recipes}" var="recipe">
					<td><c:out value="${recipe.cookTimeInMinutes}"/> min</td>
				</c:forEach>
			</tr>
			<tr>
				<th>Ingredients</th>
				<c:forEach items="${recipes}" var="recipe">
					<td><c:out value="${recipe.ingredients.size()}"/> ingredients</td>
				</c:forEach>
			</tr>
			<tr class="greyed">
				<th>Rating</th>
				<c:forEach items="${recipes}" var="recipe">
					<td>
						<fmt:formatNumber maxFractionDigits="0" value="${recipe.averageRating}" var="formattedRating"/>
						<img src="img/${formattedRating}-star.png" class="rating"/>
					</td>
				</c:forEach>
			</tr>
		</table>
		</div>
    </section>
</body>
</html>