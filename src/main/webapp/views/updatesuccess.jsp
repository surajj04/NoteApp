<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Successful</title>
    <script src="https://cdn.tailwindcss.com?plugins=forms,typography,aspect-ratio,line-clamp,container-queries"></script>
</head>

<body class="bg-gray-100 min-h-screen flex items-center justify-center">

    <div class="bg-white shadow-md rounded-lg p-8 max-w-lg text-center">
        <svg xmlns="http://www.w3.org/2000/svg" class="h-16 w-16 text-green-500 mx-auto mb-4" fill="none"
            viewBox="0 0 24 24" stroke="currentColor">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                d="M9 12l2 2 4-4m0 6a9 9 0 11-6-16 9 9 0 016 16z" />
        </svg>
        <h1 class="text-2xl font-bold text-gray-800 mb-4">Note Updated Successfully!</h1>
        <p class="text-gray-600 mb-6">
            Your changes have been saved. You can view your updated note or add a new one.
        </p>
        <div class="flex justify-center gap-4">
            <a href="/notes"
                class="bg-blue-600 text-white px-4 py-2 rounded-lg hover:bg-blue-700 transition">View Notes</a>
            <a href="/"
                class="bg-green-600 text-white px-4 py-2 rounded-lg hover:bg-green-700 transition">Add New Note</a>
        </div>
    </div>

</body>

</html>
