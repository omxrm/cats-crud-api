<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Kitty Gallery</title>

    <!-- Bootstrap CSS (CDN) -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- custom CSS -->
    <link rel="stylesheet" href="/css/style.css">
</head>

<body>

    <!-- Shared Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark custom-nav">
        <div class="container-fluid">
            <a class="navbar-brand" href="/cats">Cat Gallery</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#nav"
                aria-controls="nav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="nav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link active" href="/cats">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="/cats/createForm">Admin</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <main class="container my-4">
        <header class="text-center hero">
            <h1 class="display-6">${title}</h1>
            <p class="lead">Bringing you pictures of the cutest kittens out there!</p>
        </header>

        <!-- Search + Add button -->
        <div class="d-flex justify-content-between align-items-center mb-3">
            <form action="/cats/search" class="d-flex w-100 me-3">
                <input name="q" class="form-control form-control-lg me-2" type="search"
                    placeholder="Search by breed or name" aria-label="Search">
                <button class="btn btn-outline-secondary" type="submit">Search</button>
            </form>
            <a href="/cats/createForm" class="btn btn-success btn-lg text-nowrap">Add New Cat</a>
        </div>

        <!-- Card grid -->
        <div id="cardGrid" class="row g-4">
            <#list catsList as cat>
                <div class="col-12 col-sm-6 col-lg-4">
                    <div class="card h-100 shadow-sm">
                        <img class="card-img-top"
                            src="https://cfa.org/wp-content/uploads/2024/03/Sphynx_About_Tetsu.jpg" alt="${cat.name}">
                        <div class="card-body">
                            <h5 class="card-title">${cat.name}</h5>
                            <p class="card-text"><em>${cat.breed}</em></p>
                            <ul class="list-unstyled small mb-3">
                                <li><strong>Age:</strong> ${cat.age} years</li>
                                <li><strong>Breed:</strong>
                                    <a href="/cats/category/${cat.breed}" class="text-decoration-none">${cat.breed}</a>
                                </li>
                            </ul>
                            <a href="/cats/${cat.catId?c}" class="btn btn-primary">View Details</a>
                        </div>
                    </div>
                </div>
            </#list>
        </div>

        <#if catsList?size==0>
            <div class="alert alert-info text-center mt-4">
                No cats found. <a href="/cats/createForm">Add your first cat!</a>
            </div>
        </#if>
    </main>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>