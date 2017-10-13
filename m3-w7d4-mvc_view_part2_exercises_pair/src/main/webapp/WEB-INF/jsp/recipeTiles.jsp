<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="Recipe Tile" />
<%@ include file="common/header.jspf"%>

<section>

	<h1>Recipes</h1>
	<c:forEach var="recipe" items="${recipes}">
		<div class="block">
			<c:url var="imgRef" value="/recipeDetails?recipeId=${recipe.recipeId}" />
			<a href=${imgRef}><img src="img/recipe${recipe.recipeId}.jpg"
				class="photos" /></a> <a href=${imgRef}><p class="recipe-name">${recipe.name}</p></a>
			<p class="rating">
				<fmt:formatNumber maxFractionDigits="0"
					value="${recipe.averageRating}" var="formattedRating" />
				<img src="img/${formattedRating}-star.png" class="rating" />
			</p>
			<p class="ingredients">${recipe.ingredients.size()}ingredients</p>
		</div>
	</c:forEach>

</section>
</body>
</html>