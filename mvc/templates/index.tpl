{include file="header.tpl"}
      <div class="table-responsive">
      <h1>Products</h1>
      <table class="table table-striped table-sm">
          <thead>
            <tr>
              <th>Id_product</th>
              <th>Product</th>
              <th>Description</th>
              <th>Done</th>
              <th>Actions</th>
            </tr>
          </thead>
          <tbody>
          {foreach from=$products item=product}
            <td>
            {$product['id_product']}
            </td>
            <td>
            {$product['title']}
            </td>
            <td>
            {$product['description']}
            </td>
            <td>
            {$product['done']} 
            </td>

            <td>
              <a href="done/{$product['id_product']}"><span data-feather="check-circle"></span></a>
              <a href="deleteProduct/{$product['id_product']}"><span data-feather="trash-2"></span></a>
            </td>
          </tbody> 
          {/foreach}  
        </table>
    </main>
{include file="footer.tpl"}
