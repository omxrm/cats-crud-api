<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Featured Cat — ${cat.name}</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/css/style.css">
</head>

<body>
    <!-- Shared navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark custom-nav">
        <div class="container-fluid">
            <a class="navbar-brand" href="/cats">Cat Gallery</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#nav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="nav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="/cats">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="/cats/createForm">Admin</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <main class="container my-4">
        <h1 class="text-center mb-4">${cat.name}</h1>
        <div class="row justify-content-center">
            <div class="col-12 col-md-12 col-lg-10 col-xl-9">
                <div class="card mb-3 shadow-lg border-0">
                    <img src="https://cdn.hswstatic.com/gif/shutterstock-2428724909.jpg"
                        class="card-img-top detail-img rounded-top" alt="${cat.name}">
                    <div class="card-body">
                        <h5 class="card-title">Description</h5>
                        <p class="card-text">${cat.description}</p>

                        <p class="card-text"><strong>Breed:</strong>
                            <a href="/cats/category/${cat.breed}" class="text-decoration-none">${cat.breed}</a>
                        </p>
                        <p class="card-text"><strong>Age:</strong> ${cat.age} years old</p>

                        <hr class="my-3">

                        <div class="d-flex gap-2">
                            <a class="btn btn-warning" href="/cats/update/${cat.catId?c}">Edit Cat</a>
                            <a class="btn btn-danger" href="/cats/delete/${cat.catId?c}"
                                onclick="return confirm('Are you sure you want to delete ${cat.name}?')">Delete Cat</a>
                            <a class="btn btn-outline-secondary ms-auto" href="/cats">← Back to Gallery</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>