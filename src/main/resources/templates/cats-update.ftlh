<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Update Cat — ${cat.name}</title>
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
        <h1 class="text-center mb-4">${title}</h1>
        <form action="/cats/update/${cat.catId?c}" method="post">
            <div class="mb-3">
                <label class="form-label" for="catId">Cat ID</label>
                <input class="form-control" id="catId" name="catId" type="text" value="${cat.catId?c}" readonly>
            </div>

            <div class="mb-3">
                <label class="form-label" for="name">Name *</label>
                <input class="form-control" id="name" name="name" type="text" value="${cat.name}" required>
            </div>

            <div class="mb-3">
                <label class="form-label" for="description">Description *</label>
                <textarea class="form-control" id="description" name="description" rows="5"
                    required>${cat.description}</textarea>
            </div>

            <div class="mb-3">
                <label class="form-label" for="breed">Breed</label>
                <input class="form-control" id="breed" name="breed" type="text" value="${cat.breed}">
            </div>

            <div class="mb-3">
                <label class="form-label" for="age">Age (years)</label>
                <input class="form-control" id="age" name="age" type="number" step="0.5" min="0" value="${cat.age}">
            </div>

            <button class="btn btn-primary" type="submit">Update Cat</button>
            <a href="/cats/${cat.catId?c}" class="btn btn-outline-secondary">Cancel</a>
        </form>
    </main>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>