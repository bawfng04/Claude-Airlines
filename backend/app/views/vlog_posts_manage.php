<?php
$apiUrlForJs = getenv('API_URL') ?: base_url();


if (!function_exists('getVlogPostActionButtons')) {
    function getVlogPostActionButtons($post) {
        // Gallery images are no longer managed here, so we can simplify
        // but the original structure expected gallery_images, so we ensure it's an empty array if not present
        $postDataForJson = $post;
        if (!isset($postDataForJson['gallery_images']) || !is_array($postDataForJson['gallery_images'])) {
            $postDataForJson['gallery_images'] = [];
        }

        $postJson = htmlspecialchars(json_encode($postDataForJson), ENT_QUOTES, 'UTF-8');
        if (json_last_error() !== JSON_ERROR_NONE) {
            error_log("JSON Encode Error in getVlogPostActionButtons: " . json_last_error_msg());
            $postJson = '{}'; // Fallback to empty object
        }

        $editButton = '<button type="button" class="btn btn-sm btn-outline-primary me-1 px-2 py-1" title="Edit" onclick=\'prepareEditModal(this)\' data-post=\''. $postJson .'\' data-bs-toggle="modal" data-bs-target="#addEditPostModal"><i class="bi bi-pencil-fill"></i></button>';
        $deleteButton = '<button type="button" class="btn btn-sm btn-outline-danger px-2 py-1" title="Delete" onclick=\'prepareDeleteModal(this)\' data-id="'. ($post['id'] ?? '') .'" data-title="'. htmlspecialchars($post['title'] ?? '', ENT_QUOTES) .'" data-bs-toggle="modal" data-bs-target="#deletePostModal"><i class="bi bi-trash-fill"></i></button>';
        return '<div class="d-inline-flex">' . $editButton . $deleteButton . '</div>';
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <?php include 'components/meta_header.php'; ?>
    <title><?php echo htmlspecialchars($data['pageTitle'] ?? 'Vlog Posts Management'); ?></title>
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/extensions/datatables.net-bs5/css/dataTables.bootstrap5.min.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/compiled/css/table-datatable-jquery.css">
    <style>
        #manageTable th, #manageTable td { vertical-align: middle; }
        #manageTable th:nth-child(1), #manageTable td:nth-child(1) { width: 5%; }
        #manageTable th:nth-child(2), #manageTable td:nth-child(2) { width: 25%; max-width: 250px; }
        #manageTable th:nth-child(3), #manageTable td:nth-child(3) { width: 35%; max-width: 400px; }
        #manageTable th:nth-child(4), #manageTable td:nth-child(4) { width: 15%; }
        #manageTable th:nth-child(5), #manageTable td:nth-child(5) { width: 10%; }
        #manageTable th:nth-child(6), #manageTable td:nth-child(6) { width: 10%; }
        #manageTable td { white-space: normal !important; word-break: break-word; }
        .intro-snippet { display: -webkit-box; -webkit-line-clamp: 2; -webkit-box-orient: vertical; overflow: hidden; text-overflow: ellipsis; white-space: normal; font-size: 0.85rem; color: #6c757d; line-height: 1.4; }
        .modal-dialog-scrollable .modal-body { overflow-y: auto; max-height: calc(100vh - 210px); }
        .dataTables_wrapper .dataTables_filter { float: right; text-align: right; }
        .dataTables_wrapper .dt-length-filter-container { display: flex; justify-content: space-between; align-items: center; margin-bottom: 1rem; }
        .dataTables_wrapper .dt-length-filter-container .dataTables_filter { margin-left: auto; }
        .dataTables_wrapper .dt-length-filter-container .add-button-container { margin-left: 0.5rem; }
        #manageTable th.text-center, #manageTable td.text-center { text-align: center; }
        .form-group-inline { display: flex; flex-wrap: wrap; align-items: center; margin-bottom: 1rem; }
        .form-group-inline .form-label { margin-bottom: 0; margin-right: 0.5rem; white-space: nowrap; }
        .form-group-inline .form-control, .form-group-inline .form-select { flex-grow: 1; min-width: 150px; }
        .form-control::placeholder, .form-select::placeholder { color: #6c757d; opacity: 1; }
        .featured-image-label { display: block; margin-bottom: 0.5rem; font-weight: 500; }
        .img-thumbnail-modal { max-width: 100%; height: auto; max-height: 150px; object-fit: contain; border-radius: 0.375rem; border: 1px solid #dee2e6; display: inline-block; vertical-align: middle; }
        #featuredImageDropZone { border: 2px dashed #ccc; border-radius: 0.375rem; padding: 30px 20px; text-align: center; cursor: pointer; transition: background-color 0.2s ease, border-color 0.2s ease; background-color: #f8f9fa; position: relative; }
        #featuredImageDropZone.dragover { border-color: #0d6efd; background-color: #e7f0ff; }
        #featuredImageDropZone p { margin-bottom: 0.5rem; color: #6c757d; pointer-events: none; }
        #featuredImagePreviewContainer { margin-top: 15px; text-align: center; min-height: 50px; }
        #featuredImagePreviewContainer img { margin-bottom: 10px; }
        #btnRemoveImage { display: none; }
        #featuredImagePreviewContainer + #btnRemoveImage { display: block; }
        #postImageHidden { position: absolute; width: 1px; height: 1px; padding: 0; margin: -1px; overflow: hidden; clip: rect(0, 0, 0, 0); border: 0; }
        .section-title-label { font-weight: 600; margin-bottom: 0.5rem; display: block; font-size: 1rem; color: #495057;}

        @media (max-width: 767.98px) {
            .form-group-inline { flex-direction: column; align-items: flex-start; }
            .form-group-inline .form-label { margin-right: 0; margin-bottom: 0.25rem; }
            .form-group-inline .form-control, .form-group-inline .form-select { width: 100%; }
        }
    </style>
</head>
<body>
    <div id="app">
        <div id="main" class="layout-horizontal">
            <?php include 'components/header.php'; ?>
            <div class="content-wrapper container">
                <div class="page-heading">
                    <div class="page-title"><div class="row"><div class="col-12"><h3><?php echo htmlspecialchars($data['pageTitle'] ?? 'Vlog Posts Management'); ?></h3></div></div></div>
                </div>
                <div class="page-content">
                    <section class="section">
                        <div class="card">
                            <div class="card-body">
                                <?php
                                    if(isset($_SESSION['flash_success'])){ echo '<div class="alert alert-light-success color-success alert-dismissible fade show" role="alert">'.$_SESSION['flash_success'].'<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button></div>'; unset($_SESSION['flash_success']); }
                                    if(isset($_SESSION['flash_error'])){ echo '<div class="alert alert-light-danger color-danger alert-dismissible fade show" role="alert">'.$_SESSION['flash_error'].'<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button></div>'; unset($_SESSION['flash_error']); }
                                ?>
                                <div id="addButtonContainer" style="display: none;"><button class="btn btn-primary btn-sm" data-bs-toggle="modal" data-bs-target="#addEditPostModal" onclick="prepareAddModal()">New Post</button></div>
                                <div class="table-responsive">
                                    <table class="table table-striped table-hover table-bordered" id="manageTable">
                                        <thead><tr><th class="text-center">ID</th><th>Title</th><th>Introduction</th><th class="text-center">Author</th><th class="text-center">Status</th><th class="text-center">Actions</th></tr></thead>
                                        <tbody>
                                            <?php if (empty($data['vlogPosts'])): ?>
                                                <tr><td colspan="6" class="text-center">No vlog posts found.</td></tr>
                                            <?php else: ?>
                                                <?php foreach ($data['vlogPosts'] as $post): ?>
                                                    <tr>
                                                        <td class="text-center"><?php echo htmlspecialchars($post['id']); ?></td>
                                                        <td><a href="<?php echo base_url('vlog/' . ($post['slug'] ?? '')); ?>" target="_blank" title="View Post: <?php echo htmlspecialchars($post['title']); ?>"><?php echo htmlspecialchars($post['title']); ?></a></td>
                                                        <td><div class="intro-snippet" title="<?php echo htmlspecialchars($post['introduction'] ?? ''); ?>"><?php echo htmlspecialchars(substr($post['introduction'] ?? '', 0, 120)) . (strlen($post['introduction'] ?? '') > 120 ? '...' : ''); ?></div></td>
                                                        <td class="text-center"><?php echo htmlspecialchars($post['author_name'] ?? 'N/A'); ?></td>
                                                        <td class="text-center"><?php if ($post['status'] === 'published'): ?> <span class="badge bg-success">Published</span> <?php else: ?> <span class="badge bg-light-secondary">Draft</span> <?php endif; ?></td>
                                                        <td class="text-center"><?php echo getVlogPostActionButtons($post); ?></td>
                                                    </tr>
                                                <?php endforeach; ?>
                                            <?php endif; ?>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>
    </div>

<div class="modal fade" id="addEditPostModal" tabindex="-1" aria-labelledby="addEditPostModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl modal-dialog-scrollable">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="addEditPostModalLabel">Add/Edit Vlog Post</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form id="addEditPostForm" method="POST" action="<?php echo base_url('vlogPost/save'); ?>" enctype="multipart/form-data">
                <div class="modal-body">
                    <input type="hidden" name="id" id="postId">

                    <div class="row mb-3">
                        <div class="col-md-6">
                            <label for="postTitle" class="form-label">Title <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" name="title" id="postTitle" required placeholder="Enter post title">
                        </div>
                        <div class="col-md-3">
                            <label for="postAuthorId" class="form-label">Author ID <span class="text-danger">*</span></label>
                            <input type="number" class="form-control form-control-sm" name="user_id" id="postAuthorId" value="1" required placeholder="Author ID">
                        </div>
                        <div class="col-md-3">
                            <label for="postStatus" class="form-label">Status <span class="text-danger">*</span></label>
                            <select class="form-select form-select-sm" name="status" id="postStatus" required><option value="draft">Draft</option><option value="published">Published</option></select>
                        </div>
                    </div>

                    <div class="mb-3">
                        <label for="postIntroduction" class="form-label">Introduction</label>
                        <textarea class="form-control" name="introduction" id="postIntroduction" rows="4" placeholder="Short summary shown on hero/list (optional)"></textarea>
                    </div>

                    <div class="mb-3">
                        <label for="postContent" class="form-label">Content</label>
                        <textarea class="form-control" name="main_content" id="postContent" rows="10" placeholder="The main narrative (plain text or Markdown recommended)"></textarea>
                        <small class="form-text text-muted">Use double line breaks for paragraphs if using plain text</small>
                    </div>

                    <div class="mb-3">
                        <label class="form-label section-title-label">Featured Image</label>
                        <div class="p-3 border rounded bg-light">
                            <div id="featuredImageDropZone">
                                <input type="file" name="featured_image" id="postImage" accept="image/*" class="d-none">
                                <p><i class="bi bi-cloud-arrow-up-fill fs-3 text-secondary"></i></p>
                                <p class="mb-0">Drag & Drop image here, or click to browse</p>
                                <small class="form-text text-muted d-block">Max 5MB. JPG, PNG, GIF, WEBP.</small>
                                <div id="featuredImagePreviewContainer" class="mt-3">
                                </div>
                                <button type="button" class="btn btn-danger btn-sm mt-2" id="btnRemoveImage">Remove Image</button>
                                <input type="checkbox" value="1" name="remove_featured_image" id="removeImageCheck" class="d-none">
                            </div>
                        </div>
                    </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Save Post</button>
                </div>
            </form>
        </div>
    </div>
</div>

<div class="modal fade" id="deletePostModal" tabindex="-1" aria-labelledby="deletePostModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <form id="deletePostForm" method="POST" action="<?php echo base_url('vlogPost/delete'); ?>">
                <div class="modal-header"><h5 class="modal-title" id="deletePostModalLabel">Delete Vlog Post</h5><button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button></div>
                <div class="modal-body"><p>Are you sure you want to delete the post "<strong id="deletePostTitle"></strong>"? This will also delete associated comments.</p><input type="hidden" name="id" id="deletePostId"></div>
                <div class="modal-footer"><button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button><button type="submit" class="btn btn-danger">Delete</button></div>
            </form>
        </div>
    </div>
</div>

<?php include 'components/script.php'; ?>
<script src="<?php echo base_url(); ?>assets/extensions/jquery/jquery.min.js"></script>
<script src="<?php echo base_url(); ?>assets/extensions/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="<?php echo base_url(); ?>assets/extensions/datatables.net-bs5/js/dataTables.bootstrap5.min.js"></script>
<script>
    const apiUrl = '<?php echo $apiUrlForJs; ?>';

    $(document).ready(function () {
        $('#manageTable').DataTable({
            "order": [[ 0, "desc" ]],
            "columnDefs": [ { "orderable": false, "targets": [2, 5] } ],
            "dom": '<"dt-length-filter-container"<"dt-length"l><"dt-filter"f>>rt<"row"<"col-sm-12 col-md-5"i><"col-sm-12 col-md-7"p>>',
            "language": { "search": "_INPUT_", "searchPlaceholder": "Search posts...", "lengthMenu": "Show _MENU_ entries", "info": "Showing _START_ to _END_ of _TOTAL_ entries", "paginate": { "first": "First", "last": "Last", "next": "Next", "previous": "Previous" } },
            "initComplete": function(settings, json) {
                var filterWrapper = $('#manageTable_filter'); $("#addButtonContainer").appendTo(filterWrapper).show();
                filterWrapper.addClass("d-flex justify-content-end align-items-center"); filterWrapper.find('label').addClass("me-2"); $("#addButtonContainer").addClass("ms-2");
            }
        });

        const featuredDropZone = document.getElementById('featuredImageDropZone');
        const featuredFileInput = document.getElementById('postImage');
        const featuredPreviewContainer = document.getElementById('featuredImagePreviewContainer');
        const removeImageButton = document.getElementById('btnRemoveImage');
        const removeImageCheck = document.getElementById('removeImageCheck');

        if (featuredDropZone) {
            featuredDropZone.addEventListener('click', (e) => {
                if (e.target.id === 'btnRemoveImage' || $(e.target).closest('#btnRemoveImage').length) {
                    return;
                }
                featuredFileInput.click();
            });
            ['dragenter', 'dragover', 'dragleave', 'drop'].forEach(eventName => {
                featuredDropZone.addEventListener(eventName, preventDefaults, false);
            });
            ['dragenter', 'dragover'].forEach(eventName => {
                featuredDropZone.addEventListener(eventName, () => featuredDropZone.classList.add('dragover'), false);
            });
            ['dragleave', 'drop'].forEach(eventName => {
                featuredDropZone.addEventListener(eventName, () => featuredDropZone.classList.remove('dragover'), false);
            });
            featuredDropZone.addEventListener('drop', handleDrop, false);
        }

        $(featuredFileInput).on('change', function(event){
            if (event.target.files.length > 0) {
                handleFeaturedFile(event.target.files[0]);
            }
        });

        $(removeImageButton).on('click', function() {
            $(featuredPreviewContainer).html('');
            $(featuredFileInput).val('');
            $(featuredFileInput.files).val = null;
            $(removeImageCheck).prop('checked', true);
            $(this).hide();
        });

    });

    function preventDefaults (e) {
        e.preventDefault();
        e.stopPropagation();
    }

    function handleDrop(e) {
        const dt = e.dataTransfer;
        const files = dt.files;

        if (files.length === 1) {
            handleFeaturedFile(files[0]);
        } else if (files.length > 1) {
            alert("Please drop only one file for the featured image.");
        }
    }

    function handleFeaturedFile(file) {
        const featuredFileInput = document.getElementById('postImage');
        const featuredPreviewContainer = document.getElementById('featuredImagePreviewContainer');
        const removeImageButton = document.getElementById('btnRemoveImage');
        const removeImageCheck = document.getElementById('removeImageCheck');

        $(featuredPreviewContainer).html('');
        $(removeImageCheck).prop('checked', false);

        if (file) {
            const allowedTypes = ['image/jpeg', 'image/png', 'image/gif', 'image/webp'];
            if (!allowedTypes.includes(file.type)) {
                alert("Invalid file type for featured image.");
                $(featuredFileInput).val('');
                $(removeImageButton).hide();
                return;
            }
            if (file.size > 5 * 1024 * 1024) { // 5MB
                alert("Featured image file size exceeds 5MB.");
                $(featuredFileInput).val('');
                $(removeImageButton).hide();
                return;
            }

            const dataTransfer = new DataTransfer();
            dataTransfer.items.add(file);
            featuredFileInput.files = dataTransfer.files;

            const reader = new FileReader();
            reader.onload = function(e) {
                $(featuredPreviewContainer).html(`<img src="${e.target.result}" alt="New image preview" class="img-thumbnail-modal">`);
                $(removeImageButton).css('display', 'inline-block');
            }
            reader.readAsDataURL(file);
        } else {
            // If no file is selected (e.g., user cancels file dialog), check if there was an existing image to decide if remove button should be shown
            const existingImage = $(featuredPreviewContainer).find('img[src^="http"], img[src^="/"]');
            if (!existingImage.length) { // if no existing preview was there
                 $(removeImageButton).hide();
            }
        }
    }


    function prepareAddModal() {
        $('#addEditPostForm')[0].reset();
        $('#postId').val('');
        $('#postAuthorId').val('<?php echo $_SESSION['user_id'] ?? 1; ?>'); // Default to logged in user or 1
        $('#addEditPostModalLabel').text('Add New Vlog Post');
        $('#featuredImagePreviewContainer').html('');
        $('#btnRemoveImage').hide();
        $('#removeImageCheck').prop('checked', false);
        $('#postImage').val(''); // Clear file input
    }

    function prepareEditModal(button) {
        let postData;
        try {
            const postJsonString = $(button).attr('data-post');
            if (!postJsonString) throw new Error("data-post attribute is missing or empty.");
            postData = JSON.parse(postJsonString);
        } catch (e) {
            alert("Error: Could not load post data properly. Check console.");
            console.error("Error parsing post data:", e, "Raw data:", $(button).attr('data-post'));
            return;
        }

        prepareAddModal(); // Reset form first

        $('#postId').val(postData.id);
        $('#postAuthorId').val(postData.user_id || '1');
        $('#postTitle').val(postData.title);
        $('#postIntroduction').val(postData.introduction || '');
        $('#postContent').val(postData.main_content || '');
        $('#postStatus').val(postData.status || 'draft');
        $('#addEditPostModalLabel').text('Edit Post: ' + (postData.title || `ID ${postData.id}`));

        $('#removeImageCheck').prop('checked', false); // Ensure this is unchecked initially for edit
        $('#featuredImagePreviewContainer').html(''); // Clear previous preview
        if (postData.featured_image) {
            const imageUrl = postData.featured_image.startsWith('/') ? apiUrl + postData.featured_image : postData.featured_image;
            $('#featuredImagePreviewContainer').html(`<img src="${imageUrl}" alt="Current Featured Image" class="img-thumbnail-modal">`);
            $('#btnRemoveImage').css('display', 'inline-block');
        } else {
            $('#btnRemoveImage').hide();
        }
    }

    function prepareDeleteModal(button) {
        const id = $(button).data('id'); const title = $(button).data('title');
        $('#deletePostId').val(id); $('#deletePostTitle').text(title || `ID ${id}`);
    }

</script>

</body>
</html>