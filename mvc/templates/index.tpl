{include file="headerIndex.tpl"}
<main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4">
  <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <form action="insert" method="get">
      <h1>Create New Product</h1>
        <div class="form-group">
          <label>Name Product</label>
          <input type="text" class="form-control" name="title" id="title">
        </div>
        <div class="form-group">
          <label>Category</label>
          <select id="category" name="category">
            {foreach from=$categories item=category}
            <option value="{{$category['id_category']}}">{{$category['name']}}</option>
            {/foreach}
          </select>
        </div>
        <div class="form-group">
          <label>Description</label>
          <textarea class="form-control" id="description" name="description" rows="3"></textarea>
        </div>
        <button type="submit" class="btn btn-primary">Add New Product</button>
    </form>
  </div>

  
  <div class="table-responsive">
  <h1>Products</h1>
  <table class="table table-striped table-sm">
          <thead>
            <tr>
              <th>Id_product</th>
              <th>Product</th>
              <th>Category</th>
              <th>Description</th>
              <th>Loaded</th>
              <th>Actions</th>
            </tr>
          </thead>
          <tbody>
          {foreach from=$products item=product}
            <td>
            {$product['id_product']}
            </td>
            <td>
            {$product['title']|capitalize}
            </td>
            <td>
            {$product['name_category']|capitalize}
            </td>
            <td>
            {$product['description']}
            </td>
            <td>
            {if $product['done']}
            <div class="badge badge-primary text-wrap" style="width: 6rem;">
              Loaded
            </div>
            {/if} 
            </td>
            <td>
              <a href="done/{$product['id_product']}"><span data-feather="check-circle"></span></a>
              <a href="edit/{$product['id_product']}"><span data-feather="edit"></span></a>
              <a href="delete/{$product['id_product']}"><span data-feather="trash-2"></span></a>
            </td>
          </tbody> 
          {/foreach}
        </table>
    </main>
  </div>
{include file="footerAdmin.tpl"}