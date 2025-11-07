<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Add a New Cat</title>
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
                    <li class="nav-item"><a class="nav-link active" href="/cats/createForm">Admin</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <main class="container my-4">
        <h1 class="text-center mb-4">${title}</h1>
        <form action="/cats" method="post">
            <div class="mb-3">
                <label class="form-label" for="name">Name</label>
                <input class="form-control" id="name" name="name" type="text" required>
            </div>
            <div class="mb-3">
                <label class="form-label" for="breed">Breed</label>
                <input class="form-control" id="breed" name="breed" type="text" required>
            </div>
            <div class="mb-3">
                <label class="form-label" for="age">Age</label>
                <input class="form-control" id="age" name="age" type="number" min="0" step="1" required>
            </div>
            <div class="mb-3">
                <label class="form-label" for="imgUrl">Image URL</label>
                <input class="form-control" id="imgUrl" name="imgUrl" type="url" placeholder="https://…">
            </div>
            <div class="mb-3">
                <label class="form-label" for="description">Description</label>
                <textarea class="form-control" id="description" name="description" rows="5"></textarea>
            </div>

            <button class="btn btn-primary" type="submit">Add Cat</button>
            <a href="/cats" class="btn btn-outline-secondary">Cancel</a>
        </form>
    </main>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>