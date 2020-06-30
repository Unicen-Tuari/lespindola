{include file="headerIndex.tpl"}
<main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4">
  <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <form action="insertCategory" method="get">
    <h1>Create New Category</h1>
      <div class="form-group">
        <label>Name Category</label>
        <input type="text" class="form-control" name="name" id="name">
      </div>
      <button type="submit" class="btn btn-primary">Create New Category</button>
    </form>
  </div>

  <div class="table-responsive">
  <h1>Products</h1>
  <table class="table table-striped table-sm">
          <thead>
            <tr>
              <th>Id_category</th>
              <th>Category</th>
              <th>Actions</th>
            </tr>
          </thead>
          <tbody>
          {foreach from=$categories item=category}
            <td>
            {$category['id_category']}
            </td>
            <td>
            {$category['name']|capitalize}
            </td>
            <td>
              <a href="deleteCategory/{$category['id_category']}"><span data-feather="trash-2"></span></a>
            </td>
          </tbody> 
          {/foreach}
        </table>
    </main>
  </div>
{include file="footerAdmin.tpl"}