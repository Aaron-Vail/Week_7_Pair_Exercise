<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>

<html>
<head>
    <meta name="viewport" content="width=device-width" />
    <title>Recipe List View</title>
    <link rel="stylesheet" href="css/site.css" />
</head>
<body>
    <header>
        <h1>MVC Exercises - Views Part 2: Models</h1>        
    </header>
    <nav>
        <ul>
            <li><a href="recipeTiles">Tile Layout</a></li>
            <li><a href="recipeTable">Table Layout</a></li>
        </ul>
        
    </nav>
    <section>

			<h1>Recipes</h1>
			<c:forEach items="${recipes}" var="recipe">
			<div class="block">
				<img src="img/recipe${recipe.recipeId}.jpg" class="photos"/>
				<p class="recipe-name">"${recipe.name}"</p>
				<p class="rating">
				<fmt:formatNumber maxFractionDigits="0" value="${recipe.averageRating}" var="formattedRating"/>
						<img src="img/${formattedRating}-star.png" class="rating"/>
				</p>
				<p class="ingredients">"${recipe.ingredients.size()}" ingredients</p>
			</div>
			</c:forEach>
			
    </section>
</body>
</html>