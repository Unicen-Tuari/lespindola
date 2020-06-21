{include file="headerCategories.tpl"}
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
{include file="footerIndex.tpl"}