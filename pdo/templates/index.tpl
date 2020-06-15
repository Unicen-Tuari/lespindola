{include file="header.tpl"}
<table class="table table-striped table-sm">
          <thead>
            <tr>
              <th>Id_product</th>
              <th>Product</th>
              <th>Category</th>
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
            {$product['title']|capitalize}
            </td>
            <td>
            {$product['category']|capitalize}
            </td>
            <td>
            {$product['description']}
            </td>
            <td>
            {$product['done']} 
            </td>
            <td>
              <a href="done/{$product['id_product']}"><span data-feather="check-circle"></span></a>
              <a href="delete/{$product['id_product']}"><span data-feather="trash-2"></span></a>
            </td>
          </tbody> 
          {/foreach}
        </table>
    </main>
  </div>
{include file="footer.tpl"}