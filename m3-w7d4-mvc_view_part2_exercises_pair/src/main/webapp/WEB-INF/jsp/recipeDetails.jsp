<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="Recipe Detail" />
<%@ include file="common/header.jspf"%>

<section>

	<div class="container">
		<div class="display-image">
			<c:url var="imgRef" value="webapp/img/${recipe.recipeId}.jpg" />
			<img src="img/recipe${recipe.recipeId}.jpg" class="photos" />
		</div>
	<div class="top-two">
		<div class="display-name">
			<p class="recipe-name"><strong>${recipe.name}</strong></p>
		</div>
		<div class="display-recipe">
			<p class="recipe-type">${recipe.recipeType}</p>
		</div>
		<div class="display-time">
			<p class="cook-time"><strong>Cook Time </strong>${recipe.cookTimeInMinutes}
				minutes</p>
		</div>
		<div class="display-description">
			<p class="description">${recipe.description}</p>
		</div>
	</div>
	</div>
		<div class="display-header">
			<h4>Ingredients</h4>
		</div>
		<div class="display-ingredients">
			<c:forEach var="item" items="${recipe.ingredients}">
				<ul>
					<li><c:out value="${item.quantity}" /> <c:out
							value="${item.name}" /></li>
				</ul>
			</c:forEach>
	
		<hr></hr>
		<div class="display-prep">
			<h4>Preparation</h4>
			<ol>
				<c:forEach var="item" items="${recipe.preparationSteps}">
					<li><c:out value="${item}" /></li>
				</c:forEach>
			</ol>
		</div>
	</div>


</section>
</body>
</html>